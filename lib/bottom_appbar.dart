import 'package:flutter/material.dart';

class BottomAppBarCustom extends StatelessWidget {
  const BottomAppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 100,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              icon: Column(
                children: const [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Text('HOME')
                ],
              ),
              label: const Text(''),
            ),
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/quests'),
              icon: Column(
                children: [
                  Icon(
                    Icons.list,
                    size: 40,
                  ),
                  Text('QUESTS')
                ],
              ),
              label: Text(''),
            ),
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/store'),
              icon: Column(
                children: [
                  Icon(
                    Icons.store,
                    size: 40,
                  ),
                  Text('STORE')
                ],
              ),
              label: Text(''),
            ),
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              icon: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Text('HOME')
                ],
              ),
              label: Text(''),
            ),
            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              icon: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                  ),
                  Text('HOME')
                ],
              ),
              label: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
