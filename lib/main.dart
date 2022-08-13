import 'package:flutter/material.dart';
import 'package:online_shop_app/screens/home_page.dart';

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
        theme: ThemeData(
        
        ),
        home: const HomePage());
  }
}
