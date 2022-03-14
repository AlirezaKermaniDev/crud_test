import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/keys.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/data/models/customer_model.dart';
import 'package:hive/hive.dart';

class LocalDataSource implements DataSource {
  final Box<CustomerModel> database;

  LocalDataSource(this.database);

  @override
  Future<Either<CustomerFailure, Customer>> createCustomer(
      {required CustomerModel customerModel}) async {
    /// Checking the added [Customer] is `Unique`.
    bool isCustomerUnique = _checkCustomerIsUnique(customerModel);

    /// If the added [Customer] is not `Unique` then return [CustomerExist] failure.
    if (!isCustomerUnique) {
      return const Left(CustomerFailure.customerExist());
    }

    /// Checking the added [Customer] `email` is `Unique`.
    bool isEmailUnique = _checkEmailIsUnique(customerModel);

    /// If the added [Customer] `email` is not `Unique` then return [EmailHasBeenTaken] failure.
    if (!isEmailUnique) {
      return const Left(CustomerFailure.emailHasBeenTaken());
    }

    /// If we have Unique [Customer] then added to the DB and returned.
    await database.add(customerModel);
    return Right(customerModel);
  }

  @override
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String email}) async {
    /// Variables.
    List<Customer> customers = [];
    late Customer customer;

    /// Getting all of the Customers.
    final getAllCustomersResult = await getAllCustomers();
    customers = getAllCustomersResult.getOrElse(() => []);

    /// If the DB is empty return failure
    if (customers.isEmpty) {
      return const Left(
          CustomerFailure.unexpextedFailure("There is no Data to delete"));
    }

    /// Try to finding [Customer] by [email].
    final result = await findCustomer(email: email);

    /// If [Customer] no found retunr failure.
    if (result.isLeft()) {
      return result.fold(
          (failure) => Left(failure), (customer) => Right(customer));
    }

    /// Setting [Customer].
    result.fold(
        (failure) => null, (findedCustomer) => customer = findedCustomer);

    /// Find customer index in `DB`.
    int customerIndexinDB = customers.indexOf(customer);

    /// Delete the customer and returned.
    await database.deleteAt(customerIndexinDB);
    return Right(customer);
  }

  @override
  Future<Either<CustomerFailure, Customer>> findCustomer(
      {required String email}) async {
    /// Initail customers list.
    List<Customer> customers = [];

    /// Getting all of the Customers.
    final result = await getAllCustomers();
    customers = result.getOrElse(() => []);

    /// If the DB is empty return failure
    if (customers.isEmpty) {
      return const Left(
          CustomerFailure.unexpextedFailure("There is no Data to delete"));
    }

    /// Check customer is exist or not
    bool isCustomerExist = _checkCustomerExistByEmail(email);

    /// If customer is not Exist then return [CustomerNoFound] failure.
    if (!isCustomerExist) {
      return const Left(CustomerFailure.customerNoFound());
    }

    /// Get customer from `DB` by [email] and returned.
    Customer customer = customers.firstWhere(
      (element) => element.emailAddress.getDataOrCrash() == email,
    );
    return Right(customer);
  }

  @override
  Future<Either<CustomerFailure, List<Customer>>> getAllCustomers() async {
    try {
      return Right(database.values.toList());
    } catch (error) {
      return Left(CustomerFailure.unexpextedFailure(error.toString()));
    }
  }

  @override
  Future<Either<CustomerFailure, Customer>> putCustomer(
      {required CustomerModel customerModel}) {
    /// find [Customer] by [email].
    return findCustomer(email: customerModel.emailAddress.getDataOrCrash())
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
            database.putAt(databaseIndex, customerModel);
            return Right(customerModel);
          });
        });
      });
    });
  }

  /// Check [Customer] is `Unique` by [firstname] , [lastname] & [dateOfBirth].
  bool _checkCustomerIsUnique(CustomerModel customerModel) {
    List<CustomerModel> customers = database.values
        .where((dbcustomerModel) =>
            dbcustomerModel.firstname == customerModel.firstname &&
            dbcustomerModel.lastname == customerModel.lastname &&
            dbcustomerModel.dateOfBirth == customerModel.dateOfBirth)
        .toList();

    return customers.isEmpty;
  }

  /// Check [Customer] [email] is `Unique`.
  bool _checkEmailIsUnique(CustomerModel customerModel) {
    List<CustomerModel> customers = database.values
        .where((dbcustomerModel) =>
            dbcustomerModel.emailAddress.getDataOrCrash() ==
            customerModel.emailAddress.getDataOrCrash())
        .toList();

    return customers.isEmpty;
  }

  /// Check [Customer] is Exist by [email].
  bool _checkCustomerExistByEmail(String email) {
    List<CustomerModel> customers = database.values
        .where((dbcustomerModel) =>
            dbcustomerModel.emailAddress.getDataOrCrash() == email)
        .toList();

    return customers.isNotEmpty;
  }
}
