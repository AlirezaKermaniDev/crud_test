import 'package:flutter/material.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/add_customer_page/add_customer_page.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/customer_page/customer_page.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/customers_list_page/customers_list_page.dart';

import '../features/crud_customer/presentation/pages/edit_customer_page/edit_customer_page.dart';

/// Initial routes and pages of the project.
/// It is a map that 'the `Name` of thr route is [key] of the map' and 'the `Widget` of the page is [value] of the map'.
/// Widget should return by a function that pass [BuildContext] example => `(context) => LoginPage()`
Map<String, Widget Function(BuildContext)> routes = {
  CustomersListPage.path: (_) => const CustomersListPage(),
  AddCustomerPage.path: (_) => const AddCustomerPage(),
  CustomerPage.path: (_) => const CustomerPage(),
  EditCustomerPage.path: (_) => const EditCustomerPage(),
};
