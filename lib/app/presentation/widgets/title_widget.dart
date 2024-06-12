import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.teks});
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(color: Colors.grey.shade600),
    );
  }
}
