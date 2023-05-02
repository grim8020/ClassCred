import 'package:class_cred/constants.dart';
import 'package:class_cred/home_screen.dart';
import 'package:class_cred/profile.dart';
import 'package:class_cred/quests.dart';
import 'package:class_cred/settings.dart';
import 'package:class_cred/store.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

const _kPages = <String, IconData>{
  'HOME': Icons.home,
  'QUESTS': Icons.map,
  'STORE': Icons.store_mall_directory,
  'PROFILE': Icons.people,
  'SETTINGS': Icons.settings,
};

class ConvexBottomBar extends StatefulWidget {
  const ConvexBottomBar({super.key});

  @override
  _ConvexBottomBarState createState() => _ConvexBottomBarState();
}

class _ConvexBottomBarState extends State<ConvexBottomBar> {
  final TabStyle _tabStyle = TabStyle.reactCircle;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: const [
            Divider(),
            Expanded(
              child: TabBarView(
                children: [
                  HomeScreen(),
                  Quests(),
                  Store(),
                  Profile(),
                  Settings(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          // Optional badge argument: keys are tab indices, values can be
          // String, IconData, Color or Widget.
          /*badge=*/
          style: _tabStyle,
          backgroundColor: kGreenlandGreen,
          items: <TabItem>[
            for (final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key),
          ],
          onTap: (int i) => print('click index=$i'),
        ),
      ),
    );
  }
}
