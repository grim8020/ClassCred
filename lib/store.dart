import 'package:flutter/material.dart';

import 'constants.dart';

class Store extends StatelessWidget {
  const Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton: BackButton(
      //   onPressed: () => Navigator.pop(context),
      // ),
      backgroundColor: kOffWhite,
      body: Container(
        color: kOffWhite,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Text('Avatar Store'),
              Text(
                'Spend XP points for avatar upgrades and skills',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
