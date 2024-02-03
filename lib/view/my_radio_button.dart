import 'package:flutter/material.dart';
class MyradioButton extends StatefulWidget {
  const MyradioButton({super.key});

  @override
  State<MyradioButton> createState() => _MyradioButtonState();
}

class _MyradioButtonState extends State<MyradioButton> {

  String gender="male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          RadioListTile(
   //tileColor: Colors.greenAccent,
          hoverColor: Colors.blueAccent,
          //selectedTileColor: Colors.blue,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            activeColor: Colors.red,
            title: Text("Male"),
            value: "male", groupValue: gender, onChanged: (value) {
            setState(() {
              gender=value!;
            });
          },),
          RadioListTile(
            activeColor: Colors.red,
            title: Text("Female"),
            value: "female", groupValue: gender, onChanged: (value) {
            setState(() {
              gender=value!;
            });
          },)
        ],
      ),
    );
  }
}
