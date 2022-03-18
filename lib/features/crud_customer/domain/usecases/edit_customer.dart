import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/usecase.dart';

@lazySingleton
class EditCustomer implements UseCase<Customer, Customer> {
  final CustomerRepository _customerRepository;

  EditCustomer(this._customerRepository);

  @override
  Future<Either<CustomerFailure, Customer>> call(
      {required Customer params}) async {
    return await _customerRepository.editCustomer(customer: params);
  }
}
