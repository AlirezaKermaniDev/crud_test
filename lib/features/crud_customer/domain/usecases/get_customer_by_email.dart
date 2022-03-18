import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/usecase.dart';

@lazySingleton
class GetCustomerByEmail implements UseCase<Customer, String> {
  final CustomerRepository _customerRepository;

  GetCustomerByEmail(this._customerRepository);

  @override
  Future<Either<CustomerFailure, Customer>> call(
      {required String params}) async {
    return await _customerRepository.getCustomerByEmail(email: params);
  }
}
