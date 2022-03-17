part of 'add_customer_bloc.dart';

/// [AddCustomerBlocEvent] hold our add customer Events.
@freezed
class AddCustomerBlocEvent with _$AddCustomerBlocEvent {
  /// For when [firstName] value Changed.
  const factory AddCustomerBlocEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;

  /// For when [lastName] value Changed.
  const factory AddCustomerBlocEvent.lastNameChanged(String lastName) =
      _LastNameChanged;

  /// For when [dateOfBirth] value Changed.
  const factory AddCustomerBlocEvent.dateOfBirthChange(DateTime dateOfBirth) =
      _DateOfBirthChange;

  /// For when [emailAddress] value Changed.
  const factory AddCustomerBlocEvent.emailAddressChanged(String emailAddress) =
      _EmailAddressChanged;

  /// For when [mobileNumber] value Changed.
  const factory AddCustomerBlocEvent.mobileNumberChanged(String mobileNumber) =
      _MobileNumberChanged;

  /// For when [bankAccountNumber] value Changed.
  const factory AddCustomerBlocEvent.bankAccountNumberChanged(
      String bankAccountNumber) = _BankAccountNumberChanged;

  /// For when add customer button Pressed.
  const factory AddCustomerBlocEvent.addCustomerPressed() = _AddCustomerPressed;
}
