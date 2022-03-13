import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';

/// Customer repository interface hold our `CRUD` abstract methods.
/// NOTE : These methods will be implemented in other classes with different ways.
/// we dont care about implementing now we just create out core methods base on what we needed.
abstract class CustomerRepository {
  /// For `Adding` a new [Customer] to database.
  Future<Either<CustomerFailure, Customer>> addCustomer(
      {required Customer customer});

  /// For `Deleting` an [Customer] with [email] which is unique in database for each customer.
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String email});

  /// For `Editing` an Existing [Customer]
  Future<Either<CustomerFailure, Customer>> editCustomer(
      {required Customer customer});

  /// For Getting List of the [Customer] that we stored id database.
  Future<Either<CustomerFailure, List<Customer>>> getCustomersList();

  /// For Getting an [Customer] base on [email] which is unique in database for each customer..
  Future<Either<CustomerFailure, Customer>> getCustomerById(
      {required String email});
}
