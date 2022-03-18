import 'package:flutter/material.dart';

AppBar appBarWidget(
    {required BuildContext buildContext,
    required String title,
    Widget? action}) {
  return AppBar(
    backgroundColor: Theme.of(buildContext).primaryColor,
    title: Text(
      title,
      style: Theme.of(buildContext).textTheme.headline1,
    ),
    actions: action == null ? [] : [action],
  );
}
