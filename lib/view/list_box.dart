import 'package:flutter/material.dart';
class MyListBox1 extends StatefulWidget {
  const MyListBox1({super.key});

  @override
  State<MyListBox1> createState() => _MyListBox1State();
}

class _MyListBox1State extends State<MyListBox1> {
  bool cowFood=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.indigo,
     controlAffinity: ListTileControlAffinity.leading,
              subtitle: Text("these for cow food"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
              title: Text("Oats"),
              value: cowFood, onChanged: (value) {
              setState(() {
                cowFood=value!;
              });
            },)
          ],
        ),
      ),
    ),
    );
  }
}
