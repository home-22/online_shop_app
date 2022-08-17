import 'package:flutter/material.dart';
import 'package:online_shop_app/pages/Cart_Page.dart';
import 'package:online_shop_app/pages/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        //    '/': (context) => const HomePage(),
        '/': (context) => const CartPage()
      },
    );
  }
}
