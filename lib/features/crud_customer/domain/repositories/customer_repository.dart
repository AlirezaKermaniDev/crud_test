import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';

/// Customer repository interface hold our `CRUD` abstract methods.
/// NOTE : These methods will be implemented in other classes with different ways.
/// we dont care about implementing now we just create out core methods base on what we needed.
abstract class CustomerRepository {
  /// for `Adding` a new [Customer] to database.
  Future<Either<CustomerFailure, Customer>> addCustomer(
      {required Customer customer});

  /// for `Deleting` an [Customer] with [customerId]
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String customerId});

  /// for `Editing` an Existing [Customer]
  Future<Either<CustomerFailure, Customer>> editCustomer(
      {required Customer customer});

  /// for Getting List of the [Customer] that we stored id database.
  Future<Either<CustomerFailure, List<Customer>>> getCustomerList();

  /// for Getting an [Customer] base on id.
  Future<Either<CustomerFailure, Customer>> getCustomerById(
      {required String customerId});
}
