import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/edit_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customer_by_email.dart';

part 'edit_customer_bloc_event.dart';
part 'edit_customer_bloc_state.dart';
part 'edit_customer_bloc_bloc.freezed.dart';

/// [EditCustomerBloc] hold our BloC logics for editing a customer.
///
/// For adding customer we must pass [EditCustomer] & [GetCustomerByEmail] use cases to this bloc.
@lazySingleton
class EditCustomerBloc
    extends Bloc<EditCustomerBlocEvent, EditCustomerBlocState> {
  final EditCustomer editCustomer;
  final GetCustomerByEmail getCustomerByEmail;
  EditCustomerBloc(
      {required this.editCustomer, required this.getCustomerByEmail})

      /// Pass our initial State to `super` funtion to telling the bloc which state is our initial state.
      : super(EditCustomerBlocState.initial()) {
    /// Here we Map our `Events` to `States`
    on<EditCustomerBlocEvent>((event, emit) async {
      /// Map of all Events.
      await event.map(getCustomerByEmail: (e) async {
        /// Set [isLoading] to true for showing loading widgets.
        emit(state.copyWith(
            isLoading: true, customerfailureOrSuccessOption: none()));

        /// Getting en existing [Customer] by `email`.
        Either<CustomerFailure, Customer> resultOfGetting =
            await getCustomerByEmail(params: e.emailAddress.getDataOrCrash());

        /// Fold the result to find out is it `failure` or `success`
        await resultOfGetting.fold((failure) async {
          /// If result was failure we show some errors
          emit(state.copyWith(
              isLoading: false,
              customerfailureOrSuccessOption: Some(Left(failure))));
        }, (customer) async {
          /// If result was successful then we replace our fields with our existing [Customer] data
          emit(state.copyWith(
              firstName: customer.firstname,
              lastName: customer.lastname,
              dateOfBirth: customer.dateOfBirth,
              emailAddress: customer.emailAddress,
              mobileNumber: customer.mobileNumber,
              bankAccountNumber: customer.bankAccountNumber,
              isLoading: false,
              customerfailureOrSuccessOption: none()));
        });
      },

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
            dateOfBirth: e.dateOfBirth,
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
          editCustomerPressed: (e) async {
        /// Check if all params valid.
        if (isAllParamsValid()) {
          /// Set [isLoading] to true for showing loading widgets.
          emit(state.copyWith(
              isLoading: true, customerfailureOrSuccessOption: none()));

          /// Make a customer with our values.
          Customer customer = customerMaker();

          /// add customer with use case.
          Either<CustomerFailure, Customer> resultOfAdding =
              await editCustomer(params: customer);

          /// Set our result and setting [isLoading] to false
          emit(state.copyWith(
              isLoading: false,
              showError: resultOfAdding.isLeft(),
              customerfailureOrSuccessOption: optionOf(resultOfAdding)));
        } else {
          /// If params are not valid then we set showError to true.
          emit(state.copyWith(
              isLoading: false, customerfailureOrSuccessOption: none()));
        }
      });
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
