import 'package:flutter/material.dart';
import 'package:online_shop_app/widgets/CartAppBar.dart';
import 'package:online_shop_app/widgets/Cart_Items.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [CartItems()],
            ),
          )
        ],
      ),
    );
  }
}
