import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(

                  maxLength: 4,
                  obscureText:true ,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.blue,fontSize: 20),
                      hintText: "Enter your name"
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
