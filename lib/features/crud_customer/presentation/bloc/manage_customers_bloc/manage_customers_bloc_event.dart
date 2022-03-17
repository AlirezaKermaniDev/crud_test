part of 'manage_customers_bloc.dart';

/// [ManageCustomersBlocEvent] hold our main customer Events.
@freezed
class ManageCustomersBlocEvent with _$ManageCustomersBlocEvent {
  /// For Getting [Customer]s List
  const factory ManageCustomersBlocEvent.getCustomersList() = _GetCustomersList;

  /// For Getting [Customer] by `email`
  ///
  /// When user tap any [Customer]
  const factory ManageCustomersBlocEvent.customerPressed(
      EmailAddress emailAddress) = _CustomerPressed;

  /// For Deleting a [Customer]
  ///
  /// When user Tap delete [Customer]
  const factory ManageCustomersBlocEvent.deleteCustomerPressed(
      EmailAddress emailAddress) = _DeleteCustomerPressed;
}
