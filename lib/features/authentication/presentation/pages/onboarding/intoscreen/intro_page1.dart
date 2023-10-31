import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      child: Column(
        children: [
         Center(child: Lottie.asset('images/Animation - 1698674413759.json'),),
          Center(child: Text('Page1')),
        ],
      ),
    );
  }
}