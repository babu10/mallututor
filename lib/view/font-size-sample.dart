import 'package:flutter/material.dart';

class FontSizeSample extends StatelessWidget {
  const FontSizeSample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Text(
                "This is regular",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: "NovaSquare",
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "This is regular",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: "JosefinSans",
                    ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                width: 200,
                height: 200,
                child: Text(

                  "Hi He",

                  textAlign: TextAlign.left,

                  style: TextStyle(
                    letterSpacing: 10,
                      wordSpacing: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.blue,
                ),
              ),Container(
                margin: EdgeInsets.all(12),
                width: 200,
                height: 200,
                child: Text(
                  "Spectrum",
                  textScaler: TextScaler.linear(3),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
