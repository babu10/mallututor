import 'package:flutter/material.dart';
class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: 200,
            color: Colors.white,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            width: 200,
            color: Colors.red,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            width: 200,
            color: Colors.orange,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],

      ),
    );
  }
}
