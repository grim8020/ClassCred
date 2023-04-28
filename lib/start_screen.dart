import 'package:class_cred/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'password_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final TextEditingController emailTextEditingController =
      TextEditingController();

  late String userEmail;

  @override
  void dispose() {
    emailTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: mainBackgroundGradient,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.3,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVwrBCEtTrk9v7pIpzomlInuMOT7DLGZYAGQ&usqp=CAU'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05),
                  child: Text(
                    'ClassCred',
                    style: kLargeMainDisplayTextStyle,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.020,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: kDullYellowColor),
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      decoration: InputDecoration(
                        labelText: 'email',
                        hintText: 'you@email.com',
                        hintStyle: const TextStyle(color: kOffWhite),
                        contentPadding: const EdgeInsets.all(8),
                        icon: const Icon(Icons.mail),
                        iconColor: kOffWhite,
                        labelStyle: const TextStyle(color: kOffWhite),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          // borderSide: BorderSide(width: 3, color: kDullYellowColor),
                        ),
                      ),
                      //onChanged:
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      foregroundColor: kGreenlandGreen,
                      backgroundColor: kDullYellowColor),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PasswordScreen(emailTextEditingController.text),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN IN',
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kOffWhite,
                            ),
                            child: IconButton(
                              icon: const Icon(MdiIcons.google),
                              onPressed: () {},
                              color: kGreenlandGreen,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kOffWhite,
                            ),
                            child: IconButton(
                              icon: const Icon(MdiIcons.apple),
                              onPressed: () {},
                              color: kGreenlandGreen,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kOffWhite,
                            ),
                            child: IconButton(
                              icon: const Icon(MdiIcons.microsoft),
                              onPressed: () {},
                              color: kGreenlandGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?"),
                              TextButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, '/register');
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(color: kDullYellowColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
