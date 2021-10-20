import 'package:flutter/material.dart';
import 'package:ui_trace_2021_10_19/cancel_button.dart';
import 'package:ui_trace_2021_10_19/round_border_button.dart';
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
      home: TopPage(),
    );
  }
}

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
              image: AssetImage('assets/images/login_cartoon.jpg'),
            ),
            const Spacer(),
            const Text(
              'Welcome to the world\'s most imaginative marketplace',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: WideWidthButton(
                  text: 'Sign up',
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  tapped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const LoginPage();
                            },
                            fullscreenDialog: true));
                  }),
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

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(244, 235, 231, 1.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                color: const Color.fromRGBO(244, 235, 231, 1.0),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CancelButton(textColor: Colors.grey, onTapped: () {}),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    //↓https://api.flutter.dev/flutter/material/TextField-class.html
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email or Username',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    WideWidthButton(
                        text: 'Sign in',
                        textColor: Colors.white,
                        backgroundColor: Colors.black,
                        tapped: () {}),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const SizedBox(height: 32,),
                      OutlinedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.audiotrack,
                              color: Colors.black,
                              size: 16,
                            ),
                            Text('Continue with Apple'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 44),
                          primary: Colors.black,
                          shape: const StadiumBorder(),
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 12,),
                      OutlinedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.audiotrack,
                              color: Colors.black,
                              size: 16,
                            ),
                            Text('Continue with Apple'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 44),
                          primary: Colors.black,
                          shape: const StadiumBorder(),
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(height: 12,),
                      OutlinedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.audiotrack,
                              color: Colors.black,
                              size: 16,
                            ),
                            Text('Continue with Apple'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 44),
                          primary: Colors.black,
                          shape: const StadiumBorder(),
                          side: const BorderSide(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Don\'t have account? Sign up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
