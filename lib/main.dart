import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mc_crud_test/features/crud_customer/data/models/customer_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'core/app_routes.dart';
import 'core/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialHive();
  runApp(MaterialApp(
    routes: routes,
    theme: themeData,
  ));
}

Future<void> initialHive() async {
  final appDatabaseDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDatabaseDirectory.path);
  Hive.registerAdapter(CustomerModelAdapter());
}
