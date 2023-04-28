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
        child: SafeArea(
          child: Text('Store'),
        ),
      ),
    );
  }
}
