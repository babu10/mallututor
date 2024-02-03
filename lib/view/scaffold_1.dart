import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Scaffold1 extends StatelessWidget {
  const Scaffold1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Icon(Icons.read_more, size: 40,)
        ],
      ),

      backgroundColor: Colors.cyan,
      drawer: Drawer(),
      endDrawer: Drawer(),
      bottomNavigationBar:BottomNavigationBar(
        iconSize: 30,
     //   elevation: 90,
        items: [
          BottomNavigationBarItem(
            label: "",
              icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: "",

              icon: Icon(CupertinoIcons.cart)),
          BottomNavigationBarItem(
              label: "",

              icon: Icon(CupertinoIcons.profile_circled))
,
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () {
            print("cxgcg");
          },),
    );
  }
}
