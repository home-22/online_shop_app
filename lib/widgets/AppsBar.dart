import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class AppsBar extends StatelessWidget {
  const AppsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.cyan[50],
            child: const Icon(
              Icons.segment_outlined,
              size: 30,
              color: Colors.red,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                children: [
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
            badgeColor: Color(0xFE5E69E9),
            padding: const EdgeInsets.all(7),
            badgeContent: const Text('2'),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                foregroundImage: AssetImage('images/user.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
