import 'package:flutter/material.dart';

import '../widgets/scaffold_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldCore(
      titlePage: 'Home',
      body: Center(),
    );
  }
}
