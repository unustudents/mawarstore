import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/images_constant.dart';
import '../../routes/app_pages.dart';
import 'button_widget.dart';

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
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              title: GestureDetector(
                  onTap: () => context.goNamed(Routes.home),
                  child: Text("Mawar Store - $titlePage")),
            ),
            backgroundColor: Colors.transparent,
            body: body,
            // drawerScrimColor: Colors.transparent,
            endDrawer: Container(
              color: Colors.amber,
              margin: EdgeInsets.only(
                  top: kToolbarHeight + MediaQuery.of(context).padding.top),
              child: Drawer(
                shape: const ContinuousRectangleBorder(),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  children: [
                    const SizedBox(height: 30),

                    // DATA BERAS
                    const ButtonMain(title: "Data Beras"),
                    const SizedBox(height: 10),

                    // DATA WADAH
                    ButtonMain(
                      title: "Data Wadah",
                      onPressed: () => context.goNamed(Routes.wadah),
                    ),
                    const SizedBox(height: 10),

                    // HISTORY
                    ButtonMain(
                      title: "History",
                      onPressed: () => context.goNamed(Routes.history),
                    ),
                    const SizedBox(height: 10),

                    // CONNECTION
                    ButtonMain(
                      title: "Connection",
                      onPressed: () => context.goNamed(Routes.connection),
                    ),
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
