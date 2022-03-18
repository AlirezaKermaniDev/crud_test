import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/add_customer_page/add_customer_page.dart';
import 'package:mc_crud_test/injection/injection.dart';

import '../../bloc/manage_customers_bloc/manage_customers_bloc.dart';
import '../../widgets/app_bar_widget.dart';
import 'customers_list_widget.dart';

class CustomersListPage extends StatelessWidget {
  static const path = "/CustomersListPage";
  const CustomersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ManageCustomersBloc>(),
        child: Scaffold(
          appBar: appBarWidget(buildContext: context, title: "Customers"),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, AddCustomerPage.path).then(
                    (value) => getIt<ManageCustomersBloc>().add(
                        const ManageCustomersBlocEvent.getCustomersList()));
              },
              child: const Icon(
                Icons.add_rounded,
                size: 30.0,
              )),
          body: CustomersListWidget(),
        ));
  }
}
