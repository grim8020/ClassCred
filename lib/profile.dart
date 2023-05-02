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
        body: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kLightGreenishBlue, kGreenDarnerTrail])),
            )
          ],
        ));
  }
}
