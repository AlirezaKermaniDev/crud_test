import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/failure/customer_failure/customer_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/delete_customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customer_by_email.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customers_list.dart';

part 'manage_customers_bloc_event.dart';
part 'manage_customers_bloc_state.dart';
part 'manage_customers_bloc_bloc.freezed.dart';

/// [ManageCustomersBloc] hold our BloC logics for managing customers.
///
/// For adding customer we must pass [GetCustomerByEmail] , [GetCustomersList] & [DeleteCustomer] use cases to this bloc.
@lazySingleton
class ManageCustomersBloc
    extends Bloc<ManageCustomersBlocEvent, ManageCustomersBlocState> {
  final GetCustomerByEmail getCustomerByEmail;
  final GetCustomersList getCustomersList;
  final DeleteCustomer deleteCustomer;
  ManageCustomersBloc({
    required this.getCustomerByEmail,
    required this.getCustomersList,
    required this.deleteCustomer,
  }) : super(ManageCustomersBlocState.initial()) {
    /// Maping `events` to `state`.
    on<ManageCustomersBlocEvent>((event, emit) async {
      await event.map(getCustomersList: (e) async {
        /// Setting is Loading true for showing loading widgets
        emit(state.copyWith(
            isLoading: true, customerfailureOrSuccessOption: none()));

        /// Getting customers list from usecases.
        final resultOfGetcustomersList = await getCustomersList(params: null);

        /// Fold the result to find out is `failrue` or `success`.
        await resultOfGetcustomersList.fold((failure) async {
          /// If the result was failure then we show errors.
          emit(state.copyWith(
              isLoading: false,
              customerfailureOrSuccessOption: some(Left(failure))));
        }, (customers) async {
          /// If the result was successful then we fill the [Customer]s list
          emit(state.copyWith(
              isLoading: false,
              customers: customers,
              customerfailureOrSuccessOption: none()));
        });
      }, customerPressed: (e) async {
        /// Setting is Loading true for showing loading widgets
        emit(state.copyWith(
            isLoading: true, customerfailureOrSuccessOption: none()));

        /// Getting [Customer] from usecases.
        final resultOfGetcustomersList =
            await getCustomerByEmail(params: e.emailAddress.getDataOrCrash());

        /// Fold the result to find out is `failrue` or `success`.
        resultOfGetcustomersList.fold((failure) {
          /// If the result was failure then we show errors.
          emit(state.copyWith(
              isLoading: false,
              customerfailureOrSuccessOption: some(Left(failure))));
        }, (customer) {
          /// If the result was successful then we fill the [Customer] field
          emit(state.copyWith(
              isLoading: false,
              customer: customer,
              customerfailureOrSuccessOption: none()));
        });
      }, deleteCustomerPressed: (e) async {
        /// Setting is Loading true for showing loading widgets
        emit(state.copyWith(
            isLoading: true, customerfailureOrSuccessOption: none()));

        /// Deleting [Customer] by `email`
        final resultOfGetcustomersList =
            await deleteCustomer(params: e.emailAddress.getDataOrCrash());

        /// Fold the result to find out is `failrue` or `success`.
        resultOfGetcustomersList.fold((failure) {
          /// If the result was failure then we show errors.
          emit(state.copyWith(
              isLoading: false,
              customerfailureOrSuccessOption: some(Left(failure))));
        }, (customer) {
          /// If the result was successful then we remove the customer from list
          List<Customer> customers = state.customers;
          customers.remove(customer);
          emit(state.copyWith(
              isLoading: false,
              customers: customers,
              customerfailureOrSuccessOption: none()));
        });
      });
    });
  }
}
