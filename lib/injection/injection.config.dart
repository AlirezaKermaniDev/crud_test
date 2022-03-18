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
  gh.lazySingletonAsync<_i3.Box<String>>(() => injectableModules.database);
  gh.lazySingletonAsync<_i4.DataSource>(
      () async => _i5.LocalDataSource(await get.getAsync<_i3.Box<String>>()));
  gh.lazySingletonAsync<_i6.CustomerRepository>(() async =>
      _i7.CustomerRepositoryImpl(await get.getAsync<_i4.DataSource>()));
  gh.lazySingletonAsync<_i8.DeleteCustomer>(() async =>
      _i8.DeleteCustomer(await get.getAsync<_i6.CustomerRepository>()));
  gh.lazySingletonAsync<_i9.EditCustomer>(() async =>
      _i9.EditCustomer(await get.getAsync<_i6.CustomerRepository>()));
  gh.lazySingletonAsync<_i10.GetCustomerByEmail>(() async =>
      _i10.GetCustomerByEmail(await get.getAsync<_i6.CustomerRepository>()));
  gh.lazySingletonAsync<_i11.GetCustomersList>(() async =>
      _i11.GetCustomersList(await get.getAsync<_i6.CustomerRepository>()));
  gh.factoryAsync<_i12.ManageCustomersBloc>(() async =>
      _i12.ManageCustomersBloc(
          getCustomerByEmail: await get.getAsync<_i10.GetCustomerByEmail>(),
          getCustomersList: await get.getAsync<_i11.GetCustomersList>(),
          deleteCustomer: await get.getAsync<_i8.DeleteCustomer>()));
  gh.lazySingletonAsync<_i13.AddCustomer>(() async =>
      _i13.AddCustomer(await get.getAsync<_i6.CustomerRepository>()));
  gh.factoryAsync<_i14.AddCustomerBloc>(() async => _i14.AddCustomerBloc(
      addCustomer: await get.getAsync<_i13.AddCustomer>()));
  gh.factoryAsync<_i15.EditCustomerBloc>(() async => _i15.EditCustomerBloc(
      editCustomer: await get.getAsync<_i9.EditCustomer>(),
      getCustomerByEmail: await get.getAsync<_i10.GetCustomerByEmail>()));
  return get;
}

class _$InjectableModules extends _i16.InjectableModules {}
