import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/widgets/app_bar_widget.dart';
import 'package:mc_crud_test/injection/injection.dart';

import 'add_customer_form_widget.dart';

class AddCustomerPage extends StatelessWidget {
  static const path = "/AddCustomerPage";
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(buildContext: context, title: "Add customer"),
      body: BlocProvider.value(
        value: getIt<AddCustomerBloc>(),
        child: AddCustomerFormWidget(),
      ),
    );
  }
}
