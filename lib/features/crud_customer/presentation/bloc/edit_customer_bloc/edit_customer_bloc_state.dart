part of 'edit_customer_bloc.dart';

/// [EditCustomerBlocState] class is our state.
///
/// We only have one state class and we will change the variables on this clase base on our `Events` and our situation
/// with `copyWith()` function.
@freezed
class EditCustomerBlocState with _$EditCustomerBlocState {
  const factory EditCustomerBlocState({
    /// This hold [firstName] value that user Enter.
    required String firstName,

    /// This hold [lastName] value that user Enter.
    required String lastName,

    /// This hold [bateOfBirthChange] value that user Enter.
    required DateTime dateOfBirth,

    /// This hold [emailAddress] value that user Enter.
    required EmailAddress emailAddress,

    /// This hold [mobileNumber] value that user Enter.
    required MobileNumber mobileNumber,

    /// This hold [bankAccountNumber] value that user Enter.
    required BankAccountNumber bankAccountNumber,

    /// This will use when we have some response from our `Data Sources`
    /// The reason of why Used Option class is because in some `Events` we dont have any
    /// transaction with `Data Sourses` and on that situation we can only pass `none()` function to this variable
    /// which means we dont have any response nu when we have response from `Data Sources` we will pass `some()` function
    /// and put our response to this function.
    required Option<Either<CustomerFailure, Customer>>
        customerfailureOrSuccessOption,

    /// This is a boolean type to tell us when we have transaction with `Data Sourses`.
    required bool isLoading,

    /// This is for when we have some error.
    required bool showError,
  }) = _EditCustomerBlocState;

  /// this is for when user just open the add customer page then we initial our state with some defult values.
  factory EditCustomerBlocState.initial() => EditCustomerBlocState(
        firstName: '',
        lastName: '',
        dateOfBirth: DateTime.now(),
        emailAddress: EmailAddress(''),
        bankAccountNumber: BankAccountNumber(''),
        mobileNumber: MobileNumber(''),
        showError: false,
        isLoading: false,
        customerfailureOrSuccessOption: none(),
      );
}
