import 'package:class_cred/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              SizedBox(
                child:
                    Image.asset('assets/images/character_and_background.png'),
              ),
              Positioned(
                left: 30,
                top: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/level_back.png',
                      height: 200,
                    ),
                    Stack(
                      children: [
                        Text(
                          '12',
                          style: GoogleFonts.lalezar(
                            fontSize: 125,
                            //color: kGreenlandGreen,
                            letterSpacing: 2,
                            color: kDullYellowColor,
                          ),
                        ),
                        Text(
                          '12',
                          style: GoogleFonts.lalezar(
                            fontSize: 125,
                            //color: kGreenlandGreen,
                            letterSpacing: 2,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.6,
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 5, color: kGreenlandGreen),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: Colors.red,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/avatar_icon.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('John Doe', style: kSubheadingXLTextStyle),
                              Text(
                                'XP: 200',
                                style: kSubheadingLargeTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 5, color: kGreenlandGreen),
                            ),
                            child: Text(
                              'Recent Quests',
                              style: kSubheadingMediumTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 5, color: kGreenlandGreen),
                            ),
                            child: Text(
                              'Allies',
                              style: kSubheadingMediumTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
