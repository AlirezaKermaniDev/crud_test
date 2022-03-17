import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/edit_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customer_by_email.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/edit_customer_bloc/edit_customer_bloc_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'edit_customer_bloc_test.mocks.dart';

@GenerateMocks([EditCustomer, GetCustomerByEmail])
void main() {
  late EditCustomer mockEditCustomer;
  late GetCustomerByEmail mockGetCustomerByEmail;
  late EditCustomerBlocBloc bloc;

  setUp(() {
    mockEditCustomer = MockEditCustomer();
    mockGetCustomerByEmail = MockGetCustomerByEmail();
    bloc = EditCustomerBlocBloc(
        editCustomer: mockEditCustomer,
        getCustomerByEmail: mockGetCustomerByEmail);
  });

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress("kermani@gmail.com"),
      bankAccountNumber: BankAccountNumber("1111222233334444"));
  group("Edit customer bloc test", () {
    test(
        'When getCustomerByEmail Event raised our values should be change to existing customer',
        () async {
      /// Arrange
      when(mockGetCustomerByEmail(
              params: testCustomer.emailAddress.getDataOrCrash()))
          .thenAnswer((realInvocation) async => Right(testCustomer));

      /// Act
      bloc.add(
          EditCustomerBlocEvent.getCustomerByEmail(testCustomer.emailAddress));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.firstName, testCustomer.firstname);
      expect(bloc.state.lastName, testCustomer.lastname);
      expect(bloc.state.dateOfBirth, testCustomer.dateOfBirth);
      expect(bloc.state.emailAddress, testCustomer.emailAddress);
      expect(bloc.state.mobileNumber, testCustomer.mobileNumber);
      expect(bloc.state.bankAccountNumber, testCustomer.bankAccountNumber);
      verify(mockGetCustomerByEmail(
          params: testCustomer.emailAddress.getDataOrCrash()));
      verifyNoMoreInteractions(mockGetCustomerByEmail);
    });
    test(
        'When lastNameChanged Event raised lastName value in state should change',
        () async {
      /// Act
      bloc.add(EditCustomerBlocEvent.lastNameChanged(testCustomer.lastname));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.lastName, testCustomer.lastname);
    });
    test(
        'When dateOfBirthChange Event raised dateOfBirthChange value in state should change',
        () async {
      /// Act
      bloc.add(
          EditCustomerBlocEvent.dateOfBirthChange(testCustomer.dateOfBirth));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.dateOfBirth, testCustomer.dateOfBirth);
    });
    test(
        'When mobileNumberChanged Event raised mobileNumber value in state should change',
        () async {
      /// Act
      bloc.add(EditCustomerBlocEvent.mobileNumberChanged(
          testCustomer.mobileNumber.getDataOrCrash()));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.mobileNumber.getDataOrCrash(),
          testCustomer.mobileNumber.getDataOrCrash());
    });
    test(
        'When bankAccountNumberChanged Event raised bankAccountNumber value in state should change',
        () async {
      /// Act
      bloc.add(EditCustomerBlocEvent.bankAccountNumberChanged(
          testCustomer.bankAccountNumber.getDataOrCrash()));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.bankAccountNumber.getDataOrCrash(),
          testCustomer.bankAccountNumber.getDataOrCrash());
    });

    test(
        'When editCustomerPressed Event raised then Customer should edit and return',
        () async {
      /// Arrange
      when(mockGetCustomerByEmail(
              params: testCustomer.emailAddress.getDataOrCrash()))
          .thenAnswer((realInvocation) async => Right(testCustomer));
      when(mockEditCustomer(params: testCustomer))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      bloc.add(
          EditCustomerBlocEvent.getCustomerByEmail(testCustomer.emailAddress));
      bloc.add(EditCustomerBlocEvent.firstNameChanged(testCustomer.firstname));
      bloc.add(EditCustomerBlocEvent.lastNameChanged(testCustomer.lastname));
      bloc.add(
          EditCustomerBlocEvent.dateOfBirthChange(testCustomer.dateOfBirth));
      bloc.add(EditCustomerBlocEvent.mobileNumberChanged(
          testCustomer.mobileNumber.getDataOrCrash()));

      bloc.add(EditCustomerBlocEvent.bankAccountNumberChanged(
          testCustomer.bankAccountNumber.getDataOrCrash()));
      bloc.add(const EditCustomerBlocEvent.editCustomerPressed());
      await Future.delayed(const Duration(milliseconds: 500));

      /// Assert
      expect(
          bloc.state.customerfailureOrSuccessOption, some(Right(testCustomer)));
    });
  });
}
