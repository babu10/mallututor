import 'package:flutter/material.dart';

class MultiChildLayout extends StatelessWidget {
  const MultiChildLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      //color: Colors.green,

      child: GridView.count(
        crossAxisCount: 2,
        //scrollDirection: Axis.vertical,
        //padding: EdgeInsets.all(23),
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 400,
            color: Colors.green,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellowAccent,
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),Container(
            width: 200,
            height: 200,
            color: Colors.white,
            child: Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 400,
            color: Colors.blue,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
