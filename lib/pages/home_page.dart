import 'package:flutter/material.dart';
import 'package:online_shop_app/widgets/AppsBar.dart';
import 'package:online_shop_app/widgets/Categories.dart';
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
          const AppsBar(),
          Container(
              //   height: 300,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 50,
                          width: 200,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search...'),
                          ),
                        ),
                        const Spacer(), // da odvojimo koliko je moguce
                        const Icon(Icons.settings)
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: const Image(
                                image: AssetImage('images/user.png'),
                                width: 130,
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
                                        SizedBox(height: 10),
                                        Text(
                                          'Get the trandy\nfashion at a discount\nof up to 50%',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ],
                                    )),
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
    );
  }
}
