import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/Edit_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customers_list.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_customers_list_test.mocks.dart';

@GenerateMocks([CustomerRepository])
void main() {
  late GetCustomersList getCustomersList;
  late CustomerRepository mockCustomerRepositories;

  setUp(() {
    mockCustomerRepositories = MockCustomerRepository();
    getCustomersList = GetCustomersList(mockCustomerRepositories);
  });

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress("kermani@gmail.com"),
      bankAccountNumber: BankAccountNumber("1111222233334444"));

  test('Get Customer list usecase should return list of the customes',
      () async {
    /// Arrange
    when(mockCustomerRepositories.getCustomersList())
        .thenAnswer((_) async => Right([testCustomer]));

    /// Act
    final result = await getCustomersList(params: null);

    /// Assert
    expect(result.isRight(), true);
    verify(mockCustomerRepositories.getCustomersList());
    verifyNoMoreInteractions(mockCustomerRepositories);
  });
}
