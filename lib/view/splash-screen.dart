import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.asset('assets/logo.png', height: 90,width: 90),
            Lottie.asset(
              'assets/animations/cow.json',
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
