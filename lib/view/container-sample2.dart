import 'package:flutter/material.dart';

class ContainerSample2 extends StatelessWidget {
  const ContainerSample2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35, left: 35),
              width: 200,
              height: 200,
              child: Center(
                child: Text("Spectrum",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              decoration: ShapeDecoration(
                  color: Colors.blue,
                  shape: CircleBorder(
                      side: BorderSide(
                    color: Colors.black,
                    width: 6,
                    style: BorderStyle.solid,
                  ))),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 35),
              width: 200,
              height: 200,
              child: Center(
                child: Text("Spectrum",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
              decoration: ShapeDecoration(
                color: Colors.red,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  side: BorderSide(
                      color: Colors.cyan, width: 6, style: BorderStyle.solid),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 35),
              width: 200,
              height: 200,
              child: Center(
                child: Text("Spectrum",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              decoration: ShapeDecoration(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  side: BorderSide(
                    color: Colors.pinkAccent,
                    width: 6.0,
                    style: BorderStyle.solid,

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
