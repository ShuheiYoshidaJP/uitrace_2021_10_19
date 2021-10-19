import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  final Color textColor;
  final void Function() onTapped;

  const CancelButton(
      {Key? key, required this.textColor, required this.onTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTapped,
        child: Text('Cancel', style: TextStyle(color: textColor),));
  }
}
