import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/injection/injection.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'core/app_routes.dart';
import 'core/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialHive();
  configureInjection(Environment.prod);
  runApp(MaterialApp(
    routes: routes,
    theme: themeData,
  ));
}

Future<void> initialHive() async {
  final appDatabaseDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDatabaseDirectory.path);
}
