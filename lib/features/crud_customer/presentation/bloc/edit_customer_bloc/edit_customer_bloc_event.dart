part of 'edit_customer_bloc.dart';

/// [EditCustomerBlocEvent] hold our edit customer Events.
@freezed
class EditCustomerBlocEvent with _$EditCustomerBlocEvent {
  /// For getting existing [Customer] by `Email`
  const factory EditCustomerBlocEvent.getCustomerByEmail(
      EmailAddress emailAddress) = _GetCustomerByEmail;

  /// For when [firstName] value Changed.
  const factory EditCustomerBlocEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;

  /// For when [lastName] value Changed.
  const factory EditCustomerBlocEvent.lastNameChanged(String lastName) =
      _LastNameChanged;

  /// For when [dateOfBirth] value Changed.
  const factory EditCustomerBlocEvent.dateOfBirthChange(DateTime dateOfBirth) =
      _BateOfBirthChange;

  /// For when [mobileNumber] value Changed.
  const factory EditCustomerBlocEvent.mobileNumberChanged(String mobileNumber) =
      _MobileNumberChanged;

  /// For when [bankAccountNumber] value Changed.
  const factory EditCustomerBlocEvent.bankAccountNumberChanged(
      String bankAccountNumber) = _BankAccountNumberChanged;

  /// For when edit customer button Pressed.
  const factory EditCustomerBlocEvent.editCustomerPressed() =
      _EditCustomerPressed;
}
