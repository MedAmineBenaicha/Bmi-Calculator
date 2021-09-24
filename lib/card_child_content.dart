import 'package:flutter/material.dart';

class CardChildContent extends StatelessWidget {
  final Color contentColor;
  final String contentText;
  final IconData icon;

  CardChildContent(
      {required this.contentColor,
      required this.contentText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: contentColor),
        SizedBox(
          height: 15.0,
        ),
        Text(
          contentText,
          style: TextStyle(fontSize: 18.0, color: contentColor),
        )
      ],
    );
  }
}
