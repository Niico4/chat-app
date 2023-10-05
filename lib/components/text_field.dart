import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final bool obscurePassword;
  final TextStyle style;
  final TextStyle styleInput;
  final Color colorInput;
  final IconData? suffixIcon;
  final Function()? onSuffixIconPressed;

  const MyTextField({
    super.key,
    required this.labelText,
    this.obscurePassword = false,
    this.colorInput = Colors.red,
    this.suffixIcon,
    this.onSuffixIconPressed,
    required this.style,
    required this.styleInput,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        style: style,
        obscureText: obscurePassword,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: styleInput,
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: colorInput), // Cambia el color del borde aquí
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    colorInput), // Cambia el color del borde cuando el TextField está enfocado
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  icon: Icon(
                    suffixIcon,
                    color: Colors.grey,
                  ),
                  onPressed: onSuffixIconPressed,
                )
              : null,
        ),
      ),
    );
  }
}
