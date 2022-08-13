import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: CircleAvatar(),
          ),
          title: Center(
            child: Column(
              children: const [
                Text(
                  'Macco Zoska',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  'Jakorta INA',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(),
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 40,
                  width: 310,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Expanded(
                      child: SizedBox(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Text('BIG SALE'),
                            ),
                            Text(
                                'Get the trandy\n fashion at a discount\n of up to 50%')
                          ],
                        ),
                      ),
                    )),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {}, child: Text('All')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, child: Text('Popular')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, child: Text('Recent')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, child: Text('Recomended'))
                ],
              ),
            ],
          ),
        ));
  }
}
