import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/components/fonts_styles.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(left: 150),
            ),
          ),
          Positioned(
            top: 90.h,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 9.0,
                  right: 9.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 500.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: const Offset(4, 4)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                'Beign a Team We Find the Best way to keep You Updated',
                                style: getMedium(color: Colors.blue),
                              )),
                              Expanded(
                                  child: Text(
                                      'Each moment in time is unique, and once it passes, it can never be reclaimed. Therefore, the art of time management is a skill to be honed and cherished. Making the most of our limited time on Earth is a profound challenge, one that prompts us to ask ourselves what truly matters and how we choose to spend our time.')),
                                      Text('Our Team',style: getMedium(color: Colors.blue),),
                                      Text('As we journey through life, the inexorable march of time serves as a constant reminder of our mortality. It compels us to make the most of each day, to treasure our relationships, and to')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
