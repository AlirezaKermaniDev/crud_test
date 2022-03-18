import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:mc_crud_test/core/keys.dart';

/// Here we have 3rd party packages that we want to inject them to our classes
@module
abstract class InjectableModules {
  @lazySingleton
  Box<String> get database => Hive.box<String>(Keys.databaseKey);
}
