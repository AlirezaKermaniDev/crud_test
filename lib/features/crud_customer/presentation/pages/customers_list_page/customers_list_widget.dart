import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/usecases/get_customers_list.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/manage_customers_bloc/manage_customers_bloc.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/pages/customer_page/customer_page.dart';
import 'package:mc_crud_test/injection/injection.dart';

class CustomersListWidget extends StatelessWidget {
  CustomersListWidget({Key? key}) : super(key: key) {
    getIt<ManageCustomersBloc>()
        .add(const ManageCustomersBlocEvent.getCustomersList());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageCustomersBloc, ManageCustomersBlocState>(
      listener: (context, state) {},
      builder: (context, state) {
        return _customersListViewWidget(state);
      },
    );
  }

  ListView _customersListViewWidget(ManageCustomersBlocState state) {
    return ListView.builder(
        itemCount: state.customers.length,
        itemBuilder: (context, index) {
          Customer customer = state.customers[index];
          return _customersListItemWidget(customer, context);
        });
  }

  Padding _customersListItemWidget(Customer customer, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              _customerItemOnTap(context, customer);
            },
            style: ListTileStyle.list,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            subtitle: _customerItemSubTitleWidget(customer, context),
            title: _customerItemTitleWidget(customer, context),
            trailing: _deleteButtonWidget(context, customer),
          ),
          const Divider()
        ],
      ),
    );
  }

  void _customerItemOnTap(BuildContext context, Customer customer) {
    context
        .read<ManageCustomersBloc>()
        .add(ManageCustomersBlocEvent.customerPressed(customer.emailAddress));
    Navigator.pushNamed(context, CustomerPage.path).then((value) {
      context
          .read<ManageCustomersBloc>()
          .add(const ManageCustomersBlocEvent.getCustomersList());
    });
  }

  Text _customerItemSubTitleWidget(Customer customer, BuildContext context) {
    return Text(customer.emailAddress.getDataOrCrash(),
        style: Theme.of(context).textTheme.subtitle1);
  }

  Text _customerItemTitleWidget(Customer customer, BuildContext context) {
    return Text(
      customer.firstname + " " + customer.lastname,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  IconButton _deleteButtonWidget(BuildContext context, Customer customer) {
    return IconButton(
      onPressed: () {
        context.read<ManageCustomersBloc>().add(
            ManageCustomersBlocEvent.deleteCustomerPressed(
                customer.emailAddress));
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }
}
