import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundBorderButton extends StatelessWidget {
  final Widget? child;
  final Color borderColor;
  final Color backgroundColor;
  final void Function() onTapped;

  const RoundBorderButton(
      {Key? key,
      required this.child,
      required this.borderColor,
      required this.backgroundColor,
      required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      child: ElevatedButton(
        child: child,
        onPressed: onTapped,
      ),
    );
  }
}
