import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  const IconWithLabel(
      {Key? key,
      required this.icon,
      required this.text,
      required this.textColor,
      required this.iconColor})
      : super(key: key);
  final IconData? icon;
  final String? text;
  final Color? textColor;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 15, color: textColor),
        )
      ],
    );
  }
}
