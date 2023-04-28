import 'package:flutter/material.dart';

import 'constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: const BackButton(),
      backgroundColor: kOffWhite,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: mainBackgroundGradient,
        ),
        child: SafeArea(child: const Text('PROFILE')),
      ),
    );
  }
}
