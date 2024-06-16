import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 0.0),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.8),
      ),
      child: child,
    );
  }
}
