import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/images_constant.dart';

class ScaffoldCore extends StatelessWidget {
  const ScaffoldCore({super.key, required this.titlePage, required this.body});

  final String titlePage;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text("Mawar Store - $titlePage"),
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            iconSize: 30,
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            right: MediaQuery.of(context).size.width * 0.5,
            bottom: MediaQuery.of(context).size.height * 0.6,
            child: Image.asset(AppImages.ellipse),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.6,
            top: MediaQuery.of(context).size.height * 0.55,
            child: Image.asset(AppImages.ellipse),
          ),
          body,
        ],
      ),
      drawer: Drawer(),
    );
  }
}
