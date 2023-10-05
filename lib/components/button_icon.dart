import 'package:flutter/material.dart';

class MyButtonIcon extends StatelessWidget {
  final String imagePath;
  final String labelText;
  final String? tooltipText;
  final Color color;
  final double heigth;

  const MyButtonIcon(
      {super.key,
      required this.imagePath,
      required this.color,
      this.heigth = 40,
      required this.labelText,
      this.tooltipText});

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: () {},
      tooltip: tooltipText,
      icon: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image(
          image: AssetImage(imagePath),
          width: heigth,
          height: heigth,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(color),
      ),
    );
  }
}
