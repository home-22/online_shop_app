import 'package:flutter/material.dart';
import 'package:online_shop_app/widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(0),
          ),
        ],
      ),
    );
  }
}
