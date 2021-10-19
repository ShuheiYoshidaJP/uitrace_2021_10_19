import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundBorderButton extends StatelessWidget {
  final Widget? child;
  final Color textColor;
  final Color borderColor;
  final Color backgroundColor;
  final void Function() onTapped;

  const RoundBorderButton(
      {Key? key,
      required this.child,
      required this.textColor,
      required this.borderColor,
      required this.backgroundColor,
      required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: backgroundColor,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        child: child,
        onPressed: onTapped,
      ),
    );
  }
}
