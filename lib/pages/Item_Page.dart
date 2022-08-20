import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_shop_app/widgets/CartAppBar.dart';
import 'package:online_shop_app/widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const ItemAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                children: const [
                  Text(
                    'Pink Blazer',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '\$250',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: const [
                  Text(
                      'Pink blazer with soft matrial.not hot comfortable\ncaying.available in various sizes.suitable for use at\nparties'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, index) => const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onRatingUpdate: (index) {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
