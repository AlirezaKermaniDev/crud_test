import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// [getIt] is our injection that we created as global variable to make accessable from everywhere.
final GetIt getIt = GetIt.instance;

/// Here we implement our injection configure.
///
/// With help of `injectable` package the code will automatically generage.
/// all we have to do is set the lable for every class that we want to put them in injection. like [injectableInit]
@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
