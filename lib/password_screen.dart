import 'package:flutter/material.dart';

import 'constants.dart';

class PasswordScreen extends StatefulWidget {
  final String email;
  const PasswordScreen(this.email, {super.key});
  @override
  State<PasswordScreen> createState() => _PasswordScreenState(email);
}

class _PasswordScreenState extends State<PasswordScreen> {
  final String email;
  _PasswordScreenState(this.email);

  final TextEditingController _textEditingController = TextEditingController();

  late String password;

  @override
  Widget build(BuildContext context) {
    //final emailTextEditingController = const EmailTextField();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: BackButton(),
      backgroundColor: kOffWhite,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: mainBackgroundGradient,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                email,
                style: const TextStyle(color: kOffWhite, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(color: kDullYellowColor),
                  controller: _textEditingController,
                  obscureText: true,
                  onChanged: (value) => password = value,
                  keyboardType: TextInputType.visiblePassword,
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintStyle: const TextStyle(color: kOffWhite),
                    contentPadding: const EdgeInsets.all(8),
                    icon: const Icon(Icons.lock),
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
              ElevatedButton(
                onPressed: () => Navigator.popAndPushNamed(context, '/home'),
                child: Text('ENTER'),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    elevation: 5,
                    backgroundColor: kDullYellowColor,
                    foregroundColor: kGreenlandGreen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
