import 'package:flutter/material.dart';
class MySample extends StatefulWidget {
  const MySample({super.key});

  @override
  State<MySample> createState() => _MySampleState();
}

class _MySampleState extends State<MySample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.home, size: 200,),
      ),
    );
  }
}
