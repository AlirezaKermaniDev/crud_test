import 'dart:convert';

import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:dartz/dartz.dart';

import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:hive/hive.dart';

class LocalDataSource implements DataSource {
  final Box<String> database;

  LocalDataSource(this.database);

  @override
  Future<Either<CustomerFailure, Customer>> createCustomer(
      {required Customer customer}) async {

    /// Checking the added [Customer] is `Unique`.
    bool isCustomerUnique = _checkCustomerIsUnique(customer);

    /// If the added [Customer] is not `Unique` then return [CustomerExist] failure.
    if (!isCustomerUnique) {
      return const Left(CustomerFailure.customerExist());
    }

    /// Checking the added [Customer] `email` is `Unique`.
    bool isEmailUnique = _checkEmailIsUnique(customer);

    /// If the added [Customer] `email` is not `Unique` then return [EmailHasBeenTaken] failure.
    if (!isEmailUnique) {
      return const Left(CustomerFailure.emailHasBeenTaken());
    }

    /// If we have Unique [Customer] then added to the DB and returned.
    await database.add(json.encode(customer.toJson()));


    return Right(customer);
  }

  @override
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String email}) async {
    /// find [Customer] by [email].
    return findCustomer(email: email).then((findCustomerResult) {
      /// If can not find [Customer] then return failure.
      return findCustomerResult.fold((failure) => Left(failure),
          (foundedCustomer) {
        /// Get all [Customer]
        return getAllCustomers().then((getAllCustomersResult) {
          /// If can not get all [Customer] then return failure.
          return getAllCustomersResult.fold((failure) => Left(failure),
              (customers) {
            /// Getting index of [Customer] on `database`
            int databaseIndex = customers.indexOf(foundedCustomer);

            /// ``Deleting the [Customer] and returend
            database.deleteAt(databaseIndex);
            return Right(foundedCustomer);
          });
        });
      });
    });
  }

  @override
  Future<Either<CustomerFailure, Customer>> findCustomer(
      {required String email}) async {
    /// Check is any [Customer] with this [email].
    bool isCustomerExist = _checkCustomerExistByEmail(email);

    /// If [Customer] is not exist then retunr [CustomerNoFound] failure.
    if (!isCustomerExist) {
      return const Left(CustomerFailure.customerNoFound());
    }

    /// If Exist
    /// Get all [Customer]
    return getAllCustomers().then((getAllCustomersResult) {
      /// If can not get all [Customer] then return failure.
      return getAllCustomersResult.fold((failure) => Left(failure),
          (customers) {
        /// Getting [Customer] from list of customers and return
        Customer foundedCustomer = customers.firstWhere(
            (element) => element.emailAddress.getDataOrCrash() == email);
        return Right(foundedCustomer);
      });
    });
  }

  @override
  Future<Either<CustomerFailure, List<Customer>>> getAllCustomers() async {
    try {
      /// [Customer]s List from Database.
      List<String> customersListJson = database.values.toList();

      /// Convert json to [Customer] object.
      List<Customer> customes = [];
      for (String customerJson in customersListJson) {
        customes.add(Customer.fromJson(json.decode(customerJson)));
      }

      return Right(customes);
    } catch (error) {
      return Left(CustomerFailure.unexpextedFailure(error.toString()));
    }
  }

  @override
  Future<Either<CustomerFailure, Customer>> putCustomer(
      {required Customer customer}) {
    /// find [Customer] by [email].
    return findCustomer(email: customer.emailAddress.getDataOrCrash())
        .then((findCustomerResult) {
      /// If can not find [Customer] then return failure.
      return findCustomerResult.fold((failure) => Left(failure),
          (foundedCustomer) {
        /// Get all [Customer]
        return getAllCustomers().then((getAllCustomersResult) {
          /// If can not get all [Customer] then return failure.
          return getAllCustomersResult.fold((failure) => Left(failure),
              (customers) {
            /// Getting index of [Customer] on `database`
            int databaseIndex = customers.indexOf(foundedCustomer);

            /// Editing the [Customer] and returend
            database.putAt(databaseIndex, json.encode(customer.toJson()));
            return Right(customer);
          });
        });
      });
    });
  }

  /// Check [Customer] is `Unique` by [firstname] , [lastname] & [dateOfBirth].
  bool _checkCustomerIsUnique(Customer customer) {
    List<String> customers = database.values.where((dbcustomerJson) {
      Customer dbCustomer = Customer.fromJson(json.decode(dbcustomerJson));

      return dbCustomer.firstname == customer.firstname &&
          dbCustomer.lastname == customer.lastname &&
          dbCustomer.dateOfBirth == customer.dateOfBirth;
    }).toList();

    return customers.isEmpty;
  }

  /// Check [Customer] [email] is `Unique`.
  bool _checkEmailIsUnique(Customer customer) {
    List<String> customers = database.values.where((dbcustomerJson) {
      Customer dbCustomer = Customer.fromJson(json.decode(dbcustomerJson));

      return dbCustomer.emailAddress.getDataOrCrash() ==
          customer.emailAddress.getDataOrCrash();
    }).toList();

    return customers.isEmpty;
  }

  /// Check [Customer] is Exist by [email].
  bool _checkCustomerExistByEmail(String email) {
    List<String> customers = database.values.where((dbcustomerJson) {
      Customer dbCustomer = Customer.fromJson(json.decode(dbcustomerJson));

      return dbCustomer.emailAddress.getDataOrCrash() == email;
    }).toList();

    return customers.isNotEmpty;
  }
}
