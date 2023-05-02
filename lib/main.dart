import 'package:class_cred/constants.dart';
import 'package:class_cred/convex_app_bar.dart';
import 'package:class_cred/home_screen.dart';
import 'package:class_cred/password_screen.dart';
import 'package:class_cred/profile.dart';
import 'package:class_cred/quests.dart';
import 'package:class_cred/register_screen.dart';
import 'package:class_cred/settings.dart';
import 'package:class_cred/start_screen.dart';
import 'package:class_cred/store.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => ClassCred(), // Wrap your app
    // ),
    ClassCred());

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
      home: const HomeScreen(),
      initialRoute: '/start',
      routes: {
        '/bottomBar': (context) => const ConvexBottomBar(),
        '/start': (context) => const StartScreen(),
        '/password': (context) => const PasswordScreen('email'),
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/settings': (context) => const Settings(),
        '/quests': (context) => const Quests(),
        '/profile': (context) => const Profile(),
        '/store': (context) => const Store(),
      },
    );
  }
}

//
//
//  HOW DO I START WITH LOGIN SCREEN BUT NOT HAVE THE PERSISTENT NAV BAR SHOW UP
