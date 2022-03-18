import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/edit_customer_page/edit_customer_page.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/widgets/app_bar_widget.dart';
import 'package:mc_crud_test/injection/injection.dart';

import '../../bloc/manage_customers_bloc/manage_customers_bloc.dart';

class CustomerPage extends StatelessWidget {
  static const path = "/CustomerPage";
  const CustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageCustomersBloc, ManageCustomersBlocState>(
        bloc: getIt<ManageCustomersBloc>(),
        builder: (context, state) {
          if (state.customer == null) {
            return _loadingWidget();
          }
          return Scaffold(
            appBar: appBarWidget(
                buildContext: context,
                title:
                    state.customer!.firstname + " " + state.customer!.lastname,
                action: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, EditCustomerPage.path,
                              arguments: state.customer!.emailAddress)
                          .then((value) {
                        getIt<ManageCustomersBloc>().add(
                            ManageCustomersBlocEvent.customerPressed(
                                state.customer!.emailAddress));
                      });
                    },
                    icon: const Icon(Icons.edit_rounded))),
            body: _customerBodyWidget(context, state),
          );
        });
  }

  Center _loadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Padding _customerBodyWidget(
      BuildContext context, ManageCustomersBlocState state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _customerInformationItemWidgetBuilder(
            context,
            "Date of Birth : ",
            DateFormat.yMMMMd().format(state.customer!.dateOfBirth),
          ),
          _customerInformationItemWidgetBuilder(
            context,
            "Email : ",
            state.customer!.emailAddress.getDataOrCrash(),
          ),
          _customerInformationItemWidgetBuilder(
            context,
            "Mobile number : ",
            state.customer!.mobileNumber.getDataOrCrash(),
          ),
          _customerInformationItemWidgetBuilder(
            context,
            "Bank account number : ",
            state.customer!.bankAccountNumber.getDataOrCrash(),
          ),
        ],
      ),
    );
  }

  Padding _customerInformationItemWidgetBuilder(
      BuildContext context, String lable, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
