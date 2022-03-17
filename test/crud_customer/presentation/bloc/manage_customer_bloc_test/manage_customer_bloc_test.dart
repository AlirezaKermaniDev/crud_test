import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/delete_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/edit_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customer_by_email.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customers_list.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/edit_customer_bloc/edit_customer_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/manage_customers_bloc/manage_customers_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'manage_customer_bloc_test.mocks.dart';

@GenerateMocks(
  [GetCustomerByEmail, DeleteCustomer, GetCustomersList],
)
void main() {
  late GetCustomersList mockGetCustomersList;
  late GetCustomerByEmail mockGetCustomerByEmail;
  late DeleteCustomer mockDeleteCustomer;
  late ManageCustomersBloc bloc;

  setUp(() {
    mockGetCustomersList = MockGetCustomersList();
    mockGetCustomerByEmail = MockGetCustomerByEmail();
    mockDeleteCustomer = MockDeleteCustomer();
    bloc = ManageCustomersBloc(
        deleteCustomer: mockDeleteCustomer,
        getCustomersList: mockGetCustomersList,
        getCustomerByEmail: mockGetCustomerByEmail);
  });

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress("kermani@gmail.com"),
      bankAccountNumber: BankAccountNumber("1111222233334444"));
  group("Manage customer bloc test", () {
    test(
        'When customerPressed Event raised our customer value should be change to existing customer',
        () async {
      /// Arrange
      when(mockGetCustomerByEmail(
              params: testCustomer.emailAddress.getDataOrCrash()))
          .thenAnswer((realInvocation) async => Right(testCustomer));

      /// Act
      bloc.add(
          ManageCustomersBlocEvent.customerPressed(testCustomer.emailAddress));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.customer, testCustomer);
      verify(mockGetCustomerByEmail(
          params: testCustomer.emailAddress.getDataOrCrash()));
      verifyNoMoreInteractions(mockGetCustomerByEmail);
    });
    test(
        'When getCustomersList Event raised our customers value should be change to list of all axisting customers in database',
        () async {
      /// Arrange
      when(mockGetCustomersList(params: null))
          .thenAnswer((_) async => Right([testCustomer]));

      /// Act
      bloc.add(const ManageCustomersBlocEvent.getCustomersList());

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.customers.length, 1);
      verify(mockGetCustomersList(params: null));
      verifyNoMoreInteractions(mockGetCustomersList);
    });
    test(
        'When deleteCustomerPressed Event raised the deleted customer should remove from our customers list',
        () async {
      /// Arrange
      when(mockGetCustomersList(params: null))
          .thenAnswer((_) async => Right([testCustomer]));
      when(mockDeleteCustomer(
              params: testCustomer.emailAddress.getDataOrCrash()))
          .thenAnswer((realInvocation) async => Right(testCustomer));

      /// Act
      bloc.add(const ManageCustomersBlocEvent.getCustomersList());
      bloc.add(ManageCustomersBlocEvent.deleteCustomerPressed(
          testCustomer.emailAddress));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.customers.length, 0);
      verify(mockDeleteCustomer(
          params: testCustomer.emailAddress.getDataOrCrash()));
    });
  });
}
