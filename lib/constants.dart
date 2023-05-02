import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kLightGreenishBlue = Color(0xff25c497);
const kGreenDarnerTrail = Color(0xff4a89c9);
const kDullYellowColor = Color(0xffefeb64);
const kGreenlandGreen = Color(0xFF22a6b3);
const kOffWhite = Color(0xffc7ecee);

final kLargeMainDisplayTextStyle = GoogleFonts.frederickaTheGreat(
    fontSize: 70, color: kOffWhite, fontWeight: FontWeight.w500);

final kMediumDisplayTextStyle = GoogleFonts.frederickaTheGreat(
    fontSize: 40, color: kGreenlandGreen, fontWeight: FontWeight.w500);

final kSubheadingDisplayTextStyle =
    GoogleFonts.lalezar(fontSize: 15, color: kOffWhite);

final kSubheadingDisplayLargeTextStyle =
    GoogleFonts.lalezar(fontSize: 30, color: kOffWhite);

final kSubheadingXLTextStyle =
    GoogleFonts.lalezar(fontSize: 50, color: kGreenlandGreen);

final kSubheadingLargeTextStyle =
    GoogleFonts.lalezar(fontSize: 35, color: kGreenlandGreen);

final kSubheadingMediumTextStyle =
    GoogleFonts.lalezar(fontSize: 20, color: kGreenlandGreen);

const mainBackgroundGradient = LinearGradient(
    colors: [kLightGreenishBlue, kGreenDarnerTrail],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft);

// final kLevelTextStyle = Stack(children: [],)
