import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.redAccent[100],
            ),
          )
        ],
      ),
    );
  }
}
