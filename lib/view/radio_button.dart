import 'package:flutter/material.dart';

class RadioSample extends StatefulWidget {
  const RadioSample({super.key});

  @override
  State<RadioSample> createState() => _RadioSampleState();
}

class _RadioSampleState extends State<RadioSample> {
  String genderRadio = "male";


  bool flutter=false;
  bool java=false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            RadioListTile(
              title: Text("Male"),
              value: "male",
              groupValue: genderRadio,
              onChanged: (value) {
                setState(() {
                  genderRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Female"),
              value: "female",
              groupValue: genderRadio,
              onChanged: (value) {
                setState(() {
                  genderRadio = value!;
                });
              },
            ),
            RadioListTile(
              title: Text("Other"),
              value: "other",
              groupValue: genderRadio,
              onChanged: (value) {
                setState(() {
                  genderRadio = value!;
                });
              },
            ),
            Row(
              children: [
                Radio(
                  value: "xyz",
                  groupValue: genderRadio,
                  onChanged: (value) {
                    setState(() {
                      genderRadio = value!;
                    });
                  },
                ),
                Text("XYZ"),
              ],
            ),


            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text("Corn"),

              value: java, onChanged: (value) {
              setState(() {
                java=value!;
              });
            },),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text("Oats"),

              value: flutter, onChanged: (value) {
              setState(() {
                flutter=value!;
              });
            },)




          ],
        ),
      ),
    );
  }
}
