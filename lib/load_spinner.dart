import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadSpinner extends StatefulWidget {
  const LoadSpinner({Key? key}) : super(key: key);

  @override
  State<LoadSpinner> createState() => _LoadSpinnerState();
}

class _LoadSpinnerState extends State<LoadSpinner> {
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      duration: const Duration(seconds: 2),
      itemBuilder: (BuildContext context, int index) {
        return CircleAvatar(
          backgroundColor: index.isEven ? Colors.yellow : Colors.yellowAccent,
        );
      },
    );
  }
}
