import 'package:flutter/material.dart';

class MyListBox2 extends StatefulWidget {
  const MyListBox2({Key? key}) : super(key: key);

  @override
  State<MyListBox2> createState() => _WidgetTutorialState();
}

class _WidgetTutorialState extends State<MyListBox2> {
  final List<String> _listOfExpertise = [
    "Flutter",
    "Kotlin",
    "React Native",
    "Android",
    "Python"
  ];
  List<bool> _isChecked = [];

  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(_listOfExpertise.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.03),
      appBar: AppBar(
        backgroundColor: Colors.purple.withOpacity(0.7),
        title: const Text("Flutter Checkbox"),
      ),
      body: buildView(context),
    );
  }

  Widget buildView(BuildContext context) {
    return ListView.builder(
      itemCount: _listOfExpertise.length,
      itemBuilder: (_, i) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            side: BorderSide(
              color: Colors.purple.withOpacity(0.7),
              width: 0.6,
            ),
          ),
          child: ListTile(
            dense: true,
            leading: Checkbox(
              value: _isChecked[i],
              onChanged: (val) => setState(() {
                _isChecked[i] = val!;
              }),
            ),
            title: Text(_listOfExpertise[i]),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyListBox2(),
  ));
}
