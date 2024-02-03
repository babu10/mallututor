import 'package:flutter/material.dart';

class GestureOne extends StatefulWidget {
  const GestureOne({super.key});

  @override
  State<GestureOne> createState() => _GestureOneState();
}

class _GestureOneState extends State<GestureOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: Text("Login")),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_box_rounded)),
          GestureDetector(
              onTap: () {
                print("hi");
              },
              child: Icon(
                Icons.connecting_airports_sharp,
                size: 70,
              )),
          InkWell(
              onTap: () {
                print("hello");
              },
              child: Icon(
                Icons.connecting_airports_sharp,
                size: 70,
              )),
        ],
      ),
    );
  }
}
