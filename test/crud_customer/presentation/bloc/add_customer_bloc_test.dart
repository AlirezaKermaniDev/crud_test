import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/features/crud_customer/data/data_sources/data_sources.dart';
import 'package:mc_crud_test/features/crud_customer/data/repositories/customer_repository_impl.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'add_customer_bloc_test.mocks.dart';

@GenerateMocks([AddCustomer])
void main() {
  late AddCustomer mockAddCustomer;
  late AddCustomerBlocBloc bloc;
  setUp(() {
    mockAddCustomer = MockAddCustomer();
    bloc = AddCustomerBlocBloc(addCustomer: mockAddCustomer);
  });

  final Customer testCustomer = Customer(
      firstname: "Alireza",
      lastname: "Kermani",
      dateOfBirth: DateTime(2000, 1, 6),
      mobileNumber: MobileNumber("09030604392"),
      emailAddress: EmailAddress("kermani@gmail.com"),
      bankAccountNumber: BankAccountNumber("1111222233334444"));
  group("Add customer bloc test", () {
    test(
        'When firstNameChanged Event raised firstname value in state should change',
        () async {
      /// Act
      bloc.add(AddCustomerBlocEvent.firstNameChanged(testCustomer.firstname));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.firstName, testCustomer.firstname);
    });
    test(
        'When lastNameChanged Event raised lastName value in state should change',
        () async {
      /// Act
      bloc.add(AddCustomerBlocEvent.lastNameChanged(testCustomer.lastname));

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
          AddCustomerBlocEvent.dateOfBirthChange(testCustomer.dateOfBirth));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.dateOfBirthChange, testCustomer.dateOfBirth);
    });
    test(
        'When emailAddressChanged Event raised emailAddress value in state should change',
        () async {
      /// Act
      bloc.add(AddCustomerBlocEvent.emailAddressChanged(
          testCustomer.emailAddress.getDataOrCrash()));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.emailAddress.getDataOrCrash(),
          testCustomer.emailAddress.getDataOrCrash());
    });
    test(
        'When mobileNumberChanged Event raised mobileNumber value in state should change',
        () async {
      /// Act
      bloc.add(AddCustomerBlocEvent.mobileNumberChanged(
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
      bloc.add(AddCustomerBlocEvent.bankAccountNumberChanged(
          testCustomer.bankAccountNumber.getDataOrCrash()));

      /// This delayed is because it takes some time to bloc map events to states.
      await Future.delayed(const Duration(milliseconds: 200));

      /// Assert
      expect(bloc.state.bankAccountNumber.getDataOrCrash(),
          testCustomer.bankAccountNumber.getDataOrCrash());
    });

    test(
        'When addCustomerPressed Event raised and new Customer should add to database',
        () async {
      /// Arrange
      when(mockAddCustomer(params: testCustomer))
          .thenAnswer((_) async => Right(testCustomer));

      /// Act
      bloc.add(AddCustomerBlocEvent.firstNameChanged(testCustomer.firstname));
      bloc.add(AddCustomerBlocEvent.lastNameChanged(testCustomer.lastname));
      bloc.add(
          AddCustomerBlocEvent.dateOfBirthChange(testCustomer.dateOfBirth));
      bloc.add(AddCustomerBlocEvent.mobileNumberChanged(
          testCustomer.mobileNumber.getDataOrCrash()));
      bloc.add(AddCustomerBlocEvent.emailAddressChanged(
          testCustomer.emailAddress.getDataOrCrash()));
      bloc.add(AddCustomerBlocEvent.bankAccountNumberChanged(
          testCustomer.bankAccountNumber.getDataOrCrash()));
      bloc.add(const AddCustomerBlocEvent.addCustomerPressed());
      await Future.delayed(const Duration(milliseconds: 2000));

      /// Assert
      expect(
          bloc.state.customerfailureOrSuccessOption, some(Right(testCustomer)));
      verify(mockAddCustomer(params: testCustomer));
      verifyNoMoreInteractions(mockAddCustomer);
    });
  });
}
