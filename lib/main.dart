import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_trace_2021_10_19/wide_width_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Continue as guest',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Image(
              width: double.infinity,
              image: AssetImage(
                'assets/images/login_cartoon.jpg'
              ),
            ),
            const Spacer(),
            const Text(
              'Welcome to the world\'s most imaginative marketplace',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
              child: WideWidthButton(
                  text: 'Sign up',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  tapped: () {}),
            ),
            TextButton(
                onPressed: () {},
              child: const Text(
                'I already have an account',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
