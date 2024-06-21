import 'dart:async';

import 'package:flutter/material.dart';

import '../../constant/images_constant.dart';
import '../../routes/app_pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // Future.delayed(const Duration(seconds: 3), () => context.goNamed(Routes.home));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => context.goNamed(Routes.home));
    print(' -- splash');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.beras,
                width: MediaQuery.of(context).size.width / 2),
            const SizedBox(height: 20),
            Text(
              "Mawar Store - Beras Berkualitas",
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
