import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomersListWidget extends StatelessWidget {
  const CustomersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.builder(itemBuilder: (context, index) {
          return Container();
        });
      },
    );
  }
}
