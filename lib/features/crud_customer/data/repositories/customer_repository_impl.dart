import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';

/// In here we implements [CustomerRepository]
@LazySingleton(as: CustomerRepository)
class CustomerRepositoryImpl implements CustomerRepository {
  final DataSource dataSource;

  CustomerRepositoryImpl(this.dataSource);

  @override
  Future<Either<CustomerFailure, Customer>> addCustomer(
      {required Customer customer}) async {
    return await dataSource.createCustomer(customer: customer);
  }

  @override
  Future<Either<CustomerFailure, Customer>> deleteCustomer(
      {required String email}) async {
    return await dataSource.deleteCustomer(email: email);
  }

  @override
  Future<Either<CustomerFailure, Customer>> editCustomer(
      {required Customer customer}) async {
    return await dataSource.putCustomer(customer: customer);
  }

  @override
  Future<Either<CustomerFailure, Customer>> getCustomerByEmail(
      {required String email}) async {
    return await dataSource.findCustomer(email: email);
  }

  @override
  Future<Either<CustomerFailure, List<Customer>>> getCustomersList() async {
    return await dataSource.getAllCustomers();
  }
}
