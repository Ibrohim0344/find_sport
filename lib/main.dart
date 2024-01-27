import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'app.dart';
import 'simple_bloc_observer.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Bloc.observer = SimpleBlocObserver();
  AndroidYandexMap.useAndroidViewSurface = false;
  runApp(MyApp(ApiUserRepository()));
}
