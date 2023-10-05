import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final String text;
  final Color colorText;
  final Color color;
  const MyDivider(
      {super.key,
      required this.text,
      this.color = Colors.grey,
      this.colorText = Colors.white70});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 0.8,
            color: color,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(color: colorText, fontSize: 16),
            ),
          ),
          Expanded(
              child: Divider(
            thickness: 0.8,
            color: color,
          ))
        ],
      ),
    );
  }
}
