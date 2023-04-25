import 'package:flutter/material.dart';

import 'constants.dart';

class TextFieldStyle extends StatefulWidget {
  const TextFieldStyle({Key? key}) : super(key: key);

  @override
  State<TextFieldStyle> createState() => _TextFieldStyleState();
}

class _TextFieldStyleState extends State<TextFieldStyle> {
  final TextEditingController _textEditingController = TextEditingController();

  void userEmailAddress(String val) {}

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      onChanged: (value) => userEmailAddress(value),
      keyboardType: TextInputType.emailAddress,
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
    );
  }
}
