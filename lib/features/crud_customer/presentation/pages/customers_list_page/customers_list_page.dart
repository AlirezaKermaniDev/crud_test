import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/injection/injection.dart';

import '../../bloc/manage_customers_bloc/manage_customers_bloc.dart';
import 'customers_list_widget.dart';

class CustomersListPage extends StatelessWidget {
  const CustomersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customers")),
      body: BlocProvider(
        create: (context) => getIt<ManageCustomersBloc>(),
        child: const CustomersListWidget(),
      ),
    );
  }
}
