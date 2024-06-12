import 'package:flutter/material.dart';

class FormReguler extends StatelessWidget {
  const FormReguler({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.8),
        ),
        isDense: true,
        fillColor: Theme.of(context).primaryColor.withOpacity(0.02),
        filled: true,
      ),
    );
  }
}
