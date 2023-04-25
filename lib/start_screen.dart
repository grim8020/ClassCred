import 'package:class_cred/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'text_field.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kLightGreenishBlue, kGreenDarnerTrail],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Text(
                    'ClassCred',
                    style: kLargeMainDisplayTextStyle,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextFieldStyle(),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      foregroundColor: kGreenlandGreen,
                      backgroundColor: kDullYellowColor),
                  onPressed: () =>
                      Navigator.popAndPushNamed(context, '/password'),
                  child: const Text(
                    'Sign In',
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: kOffWhite,
                        //height: 4,
                        indent: 20,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: kSubheadingDisplayTextStyle,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                        color: kOffWhite,
                        //height: 4,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                //const LoadSpinner()
                //Icon(Icons.cast_for_education),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SignInButton(
                      Buttons.Google,
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Microsoft,
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Apple,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
