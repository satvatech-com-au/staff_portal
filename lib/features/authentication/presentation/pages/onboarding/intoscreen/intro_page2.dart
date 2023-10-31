import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Column(
        children: [
           Center(child: Lottie.asset('images/Animation - 1698669668812.json'),),
          Center(child: Text('Page2')),
        ],
      ),
    );
  }
}