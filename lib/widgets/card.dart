import 'dart:html';

import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  String? text;
  final Color color;
  final price;
  final image;

  Card({
    Key? key,
    required this.color,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.red,
        width: 1,
      )),
    );
  }
}
