import 'package:flutter/material.dart';
class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(crossAxisCount: 2),
    );
  }
}
