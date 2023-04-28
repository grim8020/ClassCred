import 'package:class_cred/constants.dart';
import 'package:class_cred/home_screen.dart';
import 'package:class_cred/password_screen.dart';
import 'package:class_cred/profile.dart';
import 'package:class_cred/quests.dart';
import 'package:class_cred/register_screen.dart';
import 'package:class_cred/settings.dart';
import 'package:class_cred/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'store.dart';

void main() {
  runApp(const ClassCred());
}

class ClassCred extends StatelessWidget {
  const ClassCred({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassCred',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color(0xff7ed6df),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: kOffWhite),
          ),
        ),
      ),
      home: const PersistentNavBar(),
      //initialRoute: '/',
      routes: {
        '/start': (context) => const StartScreen(),
        '/password': (context) => const PasswordScreen('email'),
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/settings': (context) => const Settings(),
      },
    );
  }
}

class PersistentNavBar extends StatelessWidget {
  const PersistentNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return [
        const HomeScreen(),
        const Profile(),
        const Quests(),
        const Store(),
        const Settings(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          title: ("HOME"),
          activeColorPrimary: kGreenlandGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.person),
          title: ("PROFILE"),
          activeColorPrimary: kGreenlandGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.list_bullet),
          title: ("QUESTS"),
          activeColorPrimary: kGreenlandGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.shopping_cart),
          title: ("STORE"),
          activeColorPrimary: kGreenlandGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.gear),
          title: ("SETTINGS"),
          activeColorPrimary: kGreenlandGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController controller;
    controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
