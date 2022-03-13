import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';

class AddCustomer {
  final CustomerRepository _customerRepository;

  AddCustomer(this._customerRepository);

  Future<Either<CustomerFailure, Customer>> call(
      {required Customer customer}) async {
    return await _customerRepository.addCustomer(customer: customer);
  }
}
