import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/data/models/customer_model.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';

/// DataSorce interface holds all of the Interactions between our repostiroies and our data sources
/// which it could handle in our `Local` or connect to a `Web Server`
/// depend how we implements this interface.
/// And now we does not care about implementing we just create out core methods base on what we needed
abstract class DataSource {
  /// `Creating` new [Customer].
  Future<Either<CustomerFailure, Customer>> createCustomer(
      {required CustomerModel customerModel});

  /// `Finding` a [Customer] by [email].
  ///
  /// NOTE : if did not found any [Customer] then returns [Null].
  Future<Either<CustomerFailure, Customer>> findCustomer(
      {required String email});

  /// `Deleting` an Existing [Customer] by [email].
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String email});

  /// `Getting` all [Customer]s.
  Future<Either<CustomerFailure, List<Customer>>> getAllCustomers();

  /// `Puting` or `Editing` a [Customer].
  Future<Either<CustomerFailure, Customer>> putCustomer(
      {required CustomerModel customerModel});
}
