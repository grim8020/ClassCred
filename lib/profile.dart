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
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 330,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [kLightGreenishBlue, kGreenDarnerTrail])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.edit),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, '/start'),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          backgroundColor:
                              MaterialStateProperty.all(kDullYellowColor),
                          foregroundColor:
                              MaterialStateProperty.all(kGreenlandGreen),
                        ),
                        child: const Text('LOG OUT'),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 90,
                          margin: EdgeInsets.only(top: 60),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 75,
                              color: kGreenlandGreen,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John Doe',
                        style: kSubheadingDisplayLargeTextStyle,
                      ),
                      Text(
                        '7th grade',
                        style: kSubheadingDisplayTextStyle,
                      ),
                    ],
                  ),
                  //Container()
                ],
              ),
            ],
          ),
        ));
  }
}
