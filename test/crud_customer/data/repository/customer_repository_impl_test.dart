import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/data/models/customer_model.dart';
import 'package:mc_crud_test/features/crud_customer/data/repositories/customer_repository_impl.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'customer_repository_impl_test.mocks.dart';

@GenerateMocks([DataSource])
void main() {
  late CustomerRepository customerRepository;
  late DataSource mockDataSource;

  setUp(() {
    mockDataSource = MockDataSource();
    customerRepository = CustomerRepositoryImpl(mockDataSource);
  });

  const testEmail = "kermani@gmail.com";
  final CustomerModel testCustomer = CustomerModel(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress(testEmail),
      bankAccountNumber: BankAccountNumber("1111222233334444"));

  group("Customer repository test", () {
    test('Add customer method should created customer and return the customer',
        () async {
      /// Arrange
      when(mockDataSource.createCustomer(customerModel: testCustomer))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      final result =
          await customerRepository.addCustomer(customer: testCustomer);

      /// Assert
      expect(result, Right(testCustomer));
      verify(customerRepository.addCustomer(customer: testCustomer));
      verifyNoMoreInteractions(mockDataSource);
    });
    test(
        'Delete customer method should delete customer and return the customer',
        () async {
      /// Arrange
      when(mockDataSource.deleteCustomer(email: testEmail))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      final result = await customerRepository.deleteCustomer(email: testEmail);

      /// Assert
      expect(result, Right(testCustomer));
      verify(customerRepository.deleteCustomer(email: testEmail));
      verifyNoMoreInteractions(mockDataSource);
    });
    test(
        'Edit customer method should Edit a existing customer and return the customer',
        () async {
      /// Arrange
      when(mockDataSource.putCustomer(customerModel: testCustomer))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      final result =
          await customerRepository.editCustomer(customer: testCustomer);

      /// Assert
      expect(result, Right(testCustomer));
      verify(customerRepository.editCustomer(customer: testCustomer));
      verifyNoMoreInteractions(mockDataSource);
    });
    test(
        'Get customers list method should return the all of the customers from data source',
        () async {
      /// Arrange
      when(mockDataSource.getAllCustomers())
          .thenAnswer((_) async => Right([testCustomer]));

      /// Act
      final result = await customerRepository.getCustomersList();

      /// Assert
      expect(result.isRight(), true);
      verify(customerRepository.getCustomersList());
      verifyNoMoreInteractions(mockDataSource);
    });
    test(
        'Get customer by emai method should return the customer from data source',
        () async {
      /// Arrange
      when(mockDataSource.findCustomer(email: testEmail))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      final result =
          await customerRepository.getCustomerByEmail(email: testEmail);

      /// Assert
      expect(result, Right(testCustomer));
      verify(customerRepository.getCustomerByEmail(email: testEmail));
      verifyNoMoreInteractions(mockDataSource);
    });
  });
}
