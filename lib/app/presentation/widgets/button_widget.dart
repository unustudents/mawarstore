import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  const ButtonMain({super.key, this.onPressed, this.padding, required this.title, this.foregroundColor});
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final String title;
  final Color? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(side: BorderSide(color: Theme.of(context).primaryColor), borderRadius: BorderRadius.circular(20)),
        textStyle: Theme.of(context).textTheme.titleLarge,
        foregroundColor: foregroundColor ?? Theme.of(context).primaryColor,
        shadowColor: Colors.transparent,
        // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.02),
        backgroundColor: Colors.transparent,
      ),
      child: Text(title),
    );
  }
}
