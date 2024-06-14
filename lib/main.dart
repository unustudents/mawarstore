import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mawarstore/app/presentation/pages/datawadah_page.dart';
import 'app/presentation/pages/connection_page.dart';
import 'app/theme/theme_light.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode && kIsWeb,
      builder: (BuildContext context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Mawar Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeLight.light,
      home: const DataWadahPage(),
    );
  }
}
