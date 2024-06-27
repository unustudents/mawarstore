import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mawarstore/app/presentation/cubit/database_cubit.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/theme_light.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode && kIsWeb,
      builder: (BuildContext context) => BlocProvider(
        create: (context) => DatabaseCubit()..initDatabase(),
        child: const MyApp(),
      ),
    ),
  );
}

/// {@template app_bloc_observer}
/// Custom [BlocObserver] that observes all bloc and cubit state changes.
/// {@endtemplate}
class AppBlocObserver extends BlocObserver {
  /// {@macro app_bloc_observer}
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) print(change);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppPages.routes,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Mawar Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeLight.light,
      // home: const HomePage(),
    );
  }
}
