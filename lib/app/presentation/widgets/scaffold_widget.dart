import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mawarstore/app/presentation/widgets/button_widget.dart';

import '../../constant/images_constant.dart';

class ScaffoldCore extends StatelessWidget {
  const ScaffoldCore({super.key, required this.titlePage, required this.body});

  final String titlePage;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Stack(
        children: [
          // ELLIPSE ATAS KIRI
          Positioned(
            right: MediaQuery.of(context).size.width * 0.5,
            bottom: MediaQuery.of(context).size.height * 0.6,
            child: Image.asset(AppImages.ellipse),
          ),
          // ELLIPSE BAWAH KANAN
          Positioned(
            left: MediaQuery.of(context).size.width * 0.6,
            top: MediaQuery.of(context).size.height * 0.68,
            child: Image.asset(AppImages.ellipse),
          ),
          Scaffold(
            appBar: AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
              title: Text("Mawar Store - $titlePage"),
            ),
            backgroundColor: Colors.transparent,
            body: body,
            endDrawer: Container(
              margin: EdgeInsets.only(top: kToolbarHeight + MediaQuery.of(context).padding.top),
              child: Drawer(
                shape: ContinuousRectangleBorder(),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  children: [
                    SizedBox(height: 30),
                    ButtonMain(title: "Data Beras"),
                    SizedBox(height: 10),
                    ButtonMain(title: "Data Wadah"),
                    SizedBox(height: 10),
                    ButtonMain(title: "History"),
                    SizedBox(height: 10),
                    ButtonMain(title: "Connection"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
