import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Column(
        children: [
           Center(child: Lottie.asset('images/Animation - 1698675063772.json'),),
          Center(child: Text('Page3')),
        ],
      ),
    );
  }
}