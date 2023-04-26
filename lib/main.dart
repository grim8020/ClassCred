import 'package:class_cred/constants.dart';
import 'package:flutter/material.dart';

import 'start_screen.dart';

void main() {
  runApp(const ClassCred());
}

class ClassCred extends StatelessWidget {
  const ClassCred({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassCred',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color(0xff7ed6df),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: kOffWhite),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        // '/password': (context) => PasswordScreen(),
      },
    );
  }
}
