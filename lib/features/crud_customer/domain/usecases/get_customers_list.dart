import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/usecase.dart';

class GetCustomersList implements UseCase<List<Customer>, NoParams> {
  final CustomerRepository _customerRepository;

  GetCustomersList(this._customerRepository);

  @override
  Future<Either<CustomerFailure, List<Customer>>> call(
      {required NoParams params}) async {
    return await _customerRepository.getCustomerList();
  }
}

class NoParams {}
