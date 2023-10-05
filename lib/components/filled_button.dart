import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  final String text;
  const MyFilledButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: FilledButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 105, 19, 13)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5)),
        ),
      ),
    );
  }
}
