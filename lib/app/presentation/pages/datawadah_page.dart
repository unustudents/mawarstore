import 'package:flutter/material.dart';

import '../widgets/scaffold_widget.dart';

class DataWadahPage extends StatelessWidget {
  const DataWadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldCore(
      titlePage: 'Data Wadah',
      body: Center(
        child: Text("Ini adalah Data Wadah"),
      ),
    );
  }
}
