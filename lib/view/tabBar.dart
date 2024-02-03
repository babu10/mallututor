import 'package:flutter/material.dart';
import 'package:mallututor/view/loginScreen.dart';
import 'package:mallututor/view/registrationForm.dart';

import 'my-sample.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
          bottom: const TabBar(

              dividerColor: Colors.green,
              tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
            Tab(
              icon: Icon(Icons.chat),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          MySample(),
          MyLoginScreen(),
          MyRegForm()
        ]),
      ),
    );
  }
}
