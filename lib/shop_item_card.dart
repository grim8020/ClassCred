import 'package:flutter/material.dart';

class ShopItemCard extends StatelessWidget {
  ShopItemCard({Key? key}) : super(key: key);

  List<String> upperBody = ['item 1', 'item 2', 'item 3'];

  List<List<String>> items = [];

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(
          children: [
            Text('${upperBody[0]}'),
            Container(),
          ],
        ));
  }
}
