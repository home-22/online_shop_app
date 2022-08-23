// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:online_shop_app/widgets/Categories.dart';
import 'package:online_shop_app/widgets/HomeAppBar.dart';
import 'package:online_shop_app/widgets/Items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
              padding: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.black,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent[100]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: const Image(
                                image: AssetImage('images/user.png'),
                                width: 120,
                                height: 120,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 40),
                                  margin: const EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Big Sale',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Text(
                                          'Get the trandy\nfashion at a discount\nof up to 50%',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Categories(),
                  const Items()
                ],
              ))
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 45,
        color: const Color(0xFF4C53A5),
        onTap: (index) {},
        backgroundColor: Colors.white,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.message,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
