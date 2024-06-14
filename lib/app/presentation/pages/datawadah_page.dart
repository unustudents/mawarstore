import 'package:flutter/material.dart';

import '../widgets/scaffold_widget.dart';

class DataWadahPage extends StatelessWidget {
  const DataWadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldCore(
      titlePage: 'Data Wadah',
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: TextStyle(fontSize: 20.0),
                foregroundColor: Colors.white,
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.8),
              ),
              child: Text("Tambah"),
            ),
          ],
        ),
      ),
    );
  }
}
