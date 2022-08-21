import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

List<Text> Textt = [
  const Text('All'),
  const Text('Popular'),
  const Text('Recent'),
  const Text('Recomended'),
];

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 4; i++)
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Textt[i],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
