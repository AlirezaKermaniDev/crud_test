part of 'manage_customers_bloc.dart';

/// [ManageCustomersBlocState] class is our state.
///
/// We only have one state class and we will change the variables on this clase base on our `Events` and our situation
/// with `copyWith()` function.
@freezed
class ManageCustomersBlocState with _$ManageCustomersBlocState {
  const factory ManageCustomersBlocState({
    /// When get a [Customer] by email this field will be fill by defult it is `null`.
    required Customer? customer,

    /// When get [Customer]s list this filed will be fill by defult it is an empty list.
    required List<Customer> customers,

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
  }) = _ManageCustomersBlocState;

  /// this is for when user just open the add customer page then we initial our state with some defult values.
  factory ManageCustomersBlocState.initial() => ManageCustomersBlocState(
        customer: null,
        customers: [],
        showError: false,
        isLoading: false,
        customerfailureOrSuccessOption: none(),
      );
}
