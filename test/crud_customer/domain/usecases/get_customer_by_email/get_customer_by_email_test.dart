import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customer_by_email.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_customer_by_email_test.mocks.dart';

@GenerateMocks([CustomerRepository])
void main() {
  late GetCustomerByEmail getCustomerByEmail;
  late CustomerRepository mockCustomerRepositories;

  setUp(() {
    mockCustomerRepositories = MockCustomerRepository();
    getCustomerByEmail = GetCustomerByEmail(mockCustomerRepositories);
  });

  const String tastEmail = "kermani@gmail.com";

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress(tastEmail),
      bankAccountNumber: BankAccountNumber("1111222233334444"));

  test('GetCustomerByEmail usecase should return a customer by email',
      () async {
    /// Arrange
    when(mockCustomerRepositories.getCustomerByEmail(email: tastEmail))
        .thenAnswer((_) async => Right(testCustomer));

    /// Act
    final result = await getCustomerByEmail(params: tastEmail);

    /// Assert
    expect(result, Right(testCustomer));
    verify(mockCustomerRepositories.getCustomerByEmail(email: tastEmail));
    verifyNoMoreInteractions(mockCustomerRepositories);
  });
}
