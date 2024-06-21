import 'dart:async';

import 'package:flutter/material.dart';

import '../../routes/app_pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3), () => context.goNamed(Routes.home));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => context.goNamed(Routes.home),
              child: const Text('data')),
          const Text("Mawar Store - Beras Berkualitas"),
        ],
      ),
    );
  }
}
