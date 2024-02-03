import 'dart:math';

import 'package:flutter/material.dart';
class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
style: ButtonStyle(side:MaterialStateProperty.all(BorderSide()) ),
                onPressed: () {

            }, child: Text("hi")
            ),
TextButton.icon(onPressed: () {

}, icon: Icon(Icons.home), label: Text("Home")),
          ],
        ),
      ),
    );
  }
}
