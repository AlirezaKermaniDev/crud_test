import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/edit_customer_bloc/edit_customer_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/widgets/app_bar_widget.dart';
import 'package:mc_crud_test/injection/injection.dart';

import 'edit_customer_form_widget.dart';

class EditCustomerPage extends StatelessWidget {
  static const path = "/EditCustomerPage";
  const EditCustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);
    return Scaffold(
      appBar: appBarWidget(buildContext: context, title: "Edit customer"),
      body: BlocProvider.value(
        value: getIt<EditCustomerBloc>(),
        child: EditCustomerFormWidget(
            emailAddress:
                ModalRoute.of(context)!.settings.arguments as EmailAddress),
      ),
    );
  }
}
