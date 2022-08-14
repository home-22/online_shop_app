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
          const Icon(
            Icons.space_dashboard_outlined,
            size: 30,
            color: Colors.red,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 100),
            child: Text(
              'Shop...\n App...',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          const Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: const EdgeInsets.all(7),
            badgeContent: Text('2'),
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Image(image: AssetImage('images/1.jpg'))),
            ),
          )
        ],
      ),
    );
  }
}
