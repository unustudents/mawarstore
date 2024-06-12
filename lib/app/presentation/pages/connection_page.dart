import 'package:flutter/material.dart';

import '../widgets/form_widget.dart';
import '../widgets/scaffold_widget.dart';
import '../widgets/title_widget.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ssidC = TextEditingController();
    final passwordC = TextEditingController();
    final ipAddressC = TextEditingController();

    return ScaffoldCore(
      titlePage: "Connection",
      body: Container(
        margin: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0.0),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const TitleWidget(teks: "SSID"),
            const SizedBox(height: 10),
            FormReguler(controller: ssidC),
            const SizedBox(height: 10),
            const TitleWidget(teks: "Password"),
            const SizedBox(height: 10),
            FormReguler(controller: passwordC),
            const SizedBox(height: 10),
            const TitleWidget(teks: "IP Address"),
            const SizedBox(height: 10),
            FormReguler(controller: ipAddressC),
            const SizedBox(height: 80),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(20)),
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  foregroundColor: Colors.grey.shade600,
                  shadowColor: Colors.transparent,
                  backgroundColor: Theme.of(context).primaryColor.withOpacity(0.02),
                ),
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
