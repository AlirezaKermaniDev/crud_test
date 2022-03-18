// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../features/crud_customer/data/data_sources/data_sources.dart' as _i4;
import '../features/crud_customer/data/data_sources/local_data_source.dart'
    as _i5;
import '../features/crud_customer/data/repositories/customer_repository_impl.dart'
    as _i7;
import '../features/crud_customer/domain/repositories/customer_repository.dart'
    as _i6;
import '../features/crud_customer/domain/usecases/add_customer.dart' as _i13;
import '../features/crud_customer/domain/usecases/delete_customer.dart' as _i8;
import '../features/crud_customer/domain/usecases/edit_customer.dart' as _i9;
import '../features/crud_customer/domain/usecases/get_customer_by_email.dart'
    as _i10;
import '../features/crud_customer/domain/usecases/get_customers_list.dart'
    as _i11;
import '../features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc.dart'
    as _i14;
import '../features/crud_customer/presentation/bloc/edit_customer_bloc/edit_customer_bloc.dart'
    as _i15;
import '../features/crud_customer/presentation/bloc/manage_customers_bloc/manage_customers_bloc.dart'
    as _i12;
import 'injectable_modules.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.Box<String>>(() => injectableModules.database);
  gh.lazySingleton<_i4.DataSource>(
      () => _i5.LocalDataSource(get<_i3.Box<String>>()));
  gh.lazySingleton<_i6.CustomerRepository>(
      () => _i7.CustomerRepositoryImpl(get<_i4.DataSource>()));
  gh.lazySingleton<_i8.DeleteCustomer>(
      () => _i8.DeleteCustomer(get<_i6.CustomerRepository>()));
  gh.lazySingleton<_i9.EditCustomer>(
      () => _i9.EditCustomer(get<_i6.CustomerRepository>()));
  gh.lazySingleton<_i10.GetCustomerByEmail>(
      () => _i10.GetCustomerByEmail(get<_i6.CustomerRepository>()));
  gh.lazySingleton<_i11.GetCustomersList>(
      () => _i11.GetCustomersList(get<_i6.CustomerRepository>()));
  gh.lazySingleton<_i12.ManageCustomersBloc>(() => _i12.ManageCustomersBloc(
      getCustomerByEmail: get<_i10.GetCustomerByEmail>(),
      getCustomersList: get<_i11.GetCustomersList>(),
      deleteCustomer: get<_i8.DeleteCustomer>()));
  gh.lazySingleton<_i13.AddCustomer>(
      () => _i13.AddCustomer(get<_i6.CustomerRepository>()));
  gh.lazySingleton<_i14.AddCustomerBloc>(
      () => _i14.AddCustomerBloc(addCustomer: get<_i13.AddCustomer>()));
  gh.lazySingleton<_i15.EditCustomerBloc>(() => _i15.EditCustomerBloc(
      editCustomer: get<_i9.EditCustomer>(),
      getCustomerByEmail: get<_i10.GetCustomerByEmail>()));
  return get;
}

class _$InjectableModules extends _i16.InjectableModules {}
