import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/add_customer.dart';

part 'add_customer_bloc_event.dart';
part 'add_customer_bloc_state.dart';
part 'add_customer_bloc_bloc.freezed.dart';

/// [AddCustomerBloc] hold our BloC logics for adding a customer.
///
/// For adding customer we must pass [AddCustomer] use case to this bloc.
@lazySingleton
class AddCustomerBloc extends Bloc<AddCustomerBlocEvent, AddCustomerBlocState> {
  AddCustomer addCustomer;
  AddCustomerBloc({required this.addCustomer})

      /// Pass our initial State to `super` funtion to telling the bloc which state is our initial state.
      : super(AddCustomerBlocState.initial()) {
    /// Here we Map our `Events` to `States`
    on<AddCustomerBlocEvent>(mapEventsToState);
  }

  FutureOr<void> mapEventsToState(
      AddCustomerBlocEvent event, Emitter<AddCustomerBlocState> emit) async {
    /// Map of all Events.
    await event.map(

        /// when [firstNameChanged] `Event` called this block of code will run.
        firstNameChanged: (e) async {
      emit(state.copyWith(
          firstName: e.firstName, customerfailureOrSuccessOption: none()));
    },

        /// when [lastNameChanged] `Event` called this block of code will run.
        lastNameChanged: (e) async {
      emit(state.copyWith(
          lastName: e.lastName, customerfailureOrSuccessOption: none()));
    },

        /// when [dateOfBirthChange] `Event` called this block of code will run.
        dateOfBirthChange: (e) async {
      emit(state.copyWith(
          dateOfBirth: e.dateOfBirth, customerfailureOrSuccessOption: none()));
    },

        /// when [emailAddressChanged] `Event` called this block of code will run.
        emailAddressChanged: (e) async {
      emit(state.copyWith(
          emailAddress: EmailAddress(e.emailAddress),
          customerfailureOrSuccessOption: none()));
    },

        /// when [mobileNumberChanged] `Event` called this block of code will run.
        mobileNumberChanged: (e) async {
      emit(state.copyWith(
          mobileNumber: MobileNumber(e.mobileNumber),
          customerfailureOrSuccessOption: none()));
    },

        /// when [bankAccountNumberChanged] `Event` called this block of code will run.
        bankAccountNumberChanged: (e) async {
      emit(state.copyWith(
          bankAccountNumber: BankAccountNumber(e.bankAccountNumber),
          customerfailureOrSuccessOption: none()));
    },

        /// when [addCustomerPressed] `Event` called this block of code will run.
        addCustomerPressed: (e) async {
      /// Check if all params valid.
      emit(state.copyWith(
          isAdding: true, customerfailureOrSuccessOption: none()));
      if (isAllParamsValid()) {
        /// Set [isAdding] to true for showing loading widgets.

        /// Make a customer with our values.
        Customer customer = customerMaker();

        /// add customer with use case.

        final resultOfAdding = await addCustomer(params: customer);

        /// Set our result and setting [isAdding] to false
        emit(state.copyWith(
            isAdding: false,
            customerfailureOrSuccessOption: optionOf(resultOfAdding)));
      } else {
        /// If params are not valid then we set showError to true.
        emit(state.copyWith(
            isAdding: false, customerfailureOrSuccessOption: none()));
      }
    });
  }

  Customer customerMaker() {
    Customer customer = Customer(
        bankAccountNumber: state.bankAccountNumber,
        dateOfBirth: state.dateOfBirth,
        emailAddress: state.emailAddress,
        mobileNumber: state.mobileNumber,
        firstname: state.firstName,
        lastname: state.lastName);
    return customer;
  }

  bool isAllParamsValid() {
    bool isEmailAddresValid = state.emailAddress.isValid();
    bool isMobileNumberValid = state.mobileNumber.isValid();
    bool isBankAccountNumberBalid = state.bankAccountNumber.isValid();
    bool isFirstNameValid = state.firstName.isNotEmpty;
    bool isLastNamevalid = state.lastName.isNotEmpty;
    bool isAllParamsValid = isEmailAddresValid &&
        isMobileNumberValid &&
        isBankAccountNumberBalid &&
        isFirstNameValid &&
        isLastNamevalid;

    return isAllParamsValid;
  }
}
