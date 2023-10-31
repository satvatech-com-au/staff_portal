import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../exports/exports.dart';

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Leave Summary",style:MediumHeaderStyle() ,),
          const SizedBox(height: 20,),
          Container(
            height: 70.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(4, 4)),
            ]),
            child:  Row(
              children:[
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Text("1"),
                        radius: 10,
                      ),
                      VerticalDivider(
                        indent: 10,
                        thickness: 3,
                        width: 5,
                        endIndent: 5,
                        color: Colors.black,
                      ),
                      CircleAvatar(
                        child: Text("2"),
                        radius: 10,
                      )
                    ],
                  ),
                ),
                
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  Text("22,jan 2022",style: getRegularSmall(),),
                  SizedBox(height: 11,),
                  Text("22,jan 2022",style: getRegularSmall(),)
                ],
               ),
             ),
             SizedBox(width: 150,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 74,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(child: Text("Pending",style: getRegularSmall(color: Colors.white),)),
                  ),
                  Text("22,jan 2022",style: getRegularSmall(),)
                ],
               ),
             )
              ],
            ),
          ),
        ],
      ),
    );
  }
}