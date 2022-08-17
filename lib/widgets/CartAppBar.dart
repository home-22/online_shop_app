import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.redAccent[100],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Card',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Spacer(),
          Icon(
            Icons.mood_rounded,
            size: 30,
            color: Colors.red[100],
          )
        ],
      ),
    );
  }
}
