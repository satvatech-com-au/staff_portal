import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/pages/onboarding/onboarding_screen2.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => OnboardingScreen2())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(text: "HR", children: [
                  TextSpan(
                    text: "Portal",
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
