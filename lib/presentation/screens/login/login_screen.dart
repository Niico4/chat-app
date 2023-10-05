import 'dart:ui';

import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';
import 'package:yes_no_app/components/filled_button.dart';
import 'package:yes_no_app/components/divider.dart';
import 'package:yes_no_app/components/button_icon.dart';
import 'package:yes_no_app/components/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('assets/spiderman.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.35),
              Colors.black.withOpacity(0.6)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Login',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 50,
                        letterSpacing: 6,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                const MyTextField(
                  labelText: 'Email Address',
                  styleInput: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      height: -0.1),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 50,
                ),
                const MyTextField(
                  labelText: 'Password',
                  styleInput: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      height: -0.1),
                  obscurePassword: true,
                  suffixIcon: Icons.visibility,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    children: [
                      AnimatedSwitch(
                        colorOff: Color(0xffA09F99),
                        colorOn: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Spacer(),
                      Text('Forgot Password?',
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const MyFilledButton(text: 'Login'),
                const SizedBox(
                  height: 50,
                ),
                const MyDivider(
                  text: 'Or Login With',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButtonIcon(
                      imagePath: 'assets/google.png',
                      color: Color.fromARGB(255, 211, 211, 211),
                      labelText: 'Google',
                      tooltipText: 'Google',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MyButtonIcon(
                      imagePath: 'assets/apple.png',
                      color: Color.fromARGB(255, 211, 211, 211),
                      labelText: 'Apple',
                      tooltipText: 'Apple',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    MyButtonIcon(
                      imagePath: 'assets/facebook.png',
                      color: Color.fromARGB(255, 211, 211, 211),
                      labelText: 'Facebook',
                      tooltipText: 'Facebook',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                      child: const Text('Register',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
