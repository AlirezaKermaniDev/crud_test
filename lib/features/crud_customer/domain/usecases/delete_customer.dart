import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/usecase.dart';

class DeleteCustomer implements UseCase<Customer, String> {
  final CustomerRepository _customerRepository;

  DeleteCustomer(this._customerRepository);

  @override
  Future<Either<CustomerFailure, Customer>> call(
      {required String params}) async {
    return await _customerRepository.deleteCustomer(email: params);
  }
}
