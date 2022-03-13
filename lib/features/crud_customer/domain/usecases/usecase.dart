import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';

/// Its just an Interface for our `usecases` to make sure they all implements in the same way.
abstract class UseCase<Type, Params> {
  /// [call] function is equal to custractor of our usecase instances which means
  /// there is no need to code like this `addCustomer.call(customer)` to call the [call] function.
  /// instead we can do this `addCustomer(customer)` and then the flutter automatically call the [call] function.
  Future<Either<CustomerFailure, Type>> call({required Params params});
}
