import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'add_customer_test.mocks.dart';

@GenerateMocks([CustomerRepository])
void main() {
  late AddCustomer addCustomer;
  late CustomerRepository mockCustomerRepositories;

  setUp(() {
    mockCustomerRepositories = MockCustomerRepository();
    addCustomer = AddCustomer(mockCustomerRepositories);
  });

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress("kermani@gmail.com"),
      bankAccountNumber: BankAccountNumber("1111222233334444"));

  test('AddCustomer usecase should add user', () async {
    /// Arrange
    when(mockCustomerRepositories.addCustomer(customer: testCustomer))
        .thenAnswer((_) async => Right(testCustomer));

    /// Act
    final result = await addCustomer(customer: testCustomer);

    /// Assert
    expect(result, Right(testCustomer));
    verify(mockCustomerRepositories.addCustomer(customer: testCustomer));
    verifyNoMoreInteractions(mockCustomerRepositories);
  });
}
