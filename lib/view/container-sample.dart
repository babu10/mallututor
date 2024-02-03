import 'package:flutter/material.dart';
class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100,
              height: 100,
            //  color: Colors.blue,
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 5,
                  ),

                ),
                color: Colors.orange,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )

              ),
              child: const Text("hekkopjhhjko",style: TextStyle(color: Colors.white),),
            ),
            Container(
              width: 200,
              height: 200,
             // color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(20),
              child: const Text("hekkopjhhjko"),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 30,
                    spreadRadius: 10,
                  //  blurStyle: BlurStyle.inner,
                    offset: Offset(0.0,15.0)

                  )
                ],

                gradient: LinearGradient(
                    begin: Alignment.topLeft,end: Alignment.bottomRight,

                    colors: [Colors.blue,Colors.yellow,Colors.pink])
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purple,
                // shape: BoxShape.circle, // if you want circle, default is rectangle
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.lightBlueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight),
// adds border around the container
                border: Border.all(
                  color: Colors.lightGreenAccent,
                  width: 6.0,
                  style: BorderStyle.solid,
                ),
// adds rounded curve around the corners
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
// adds shadow behind the container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0,
                    spreadRadius: 3.0,
                    offset: Offset(-10.0, -10.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
