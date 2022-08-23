// ignore_for_file: file_names
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.segment_outlined,
              size: 30,
              color: Colors.redAccent[100],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Column(
                children: const [
                  Text(
                    'Helo Zoskia',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Text(
                    'Jakarta, INA',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )),
          const Spacer(),
          Badge(
            badgeColor: Colors.redAccent,
            padding: const EdgeInsets.all(7),
            badgeContent: const Text('3'),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'CartPage');
              },
              child: const CircleAvatar(
                foregroundImage: AssetImage('images/user.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
