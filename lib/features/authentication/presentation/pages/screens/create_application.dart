import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/components/common_widgets.dart';
import '../../widgets/components/fonts_styles.dart';

class CreateApplicaton extends StatelessWidget {
  const CreateApplicaton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Text('Create Application',style: BoldHeaderstextStyle(color:Colors.white),),
        centerTitle: true,
      ),
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
            top: 20,
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
                  top: 70,
                  left: 9.0,
                  right: 9.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All feilds are required",
                      style: getRegularSmall(color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60.h,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.blue,
                              ),
                              Text("From"),
                              SizedBox(width: 50,),
                              Icon(Icons.arrow_drop_down),
                              SizedBox(width: 30,),
                              const VerticalDivider(
                                thickness: 1,
                                color: Colors.grey,
                                width: 30,
                                indent: 15,
                                endIndent: 15,
                              ),
                              Text("To"),
                              SizedBox(width: 50,),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Select you leave type',style: MediumHeaderStyle(),),
                    SizedBox(height: 10,),
                     Row(
                       children: [
                         Container(
                            height: 30.h,
                            width: 100.w,
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
                                child: Center(child: Text("Full day",style: getRegularSmall(),)),
                         ),
                         SizedBox(width: 10,),
                          Container(
                            height: 30.h,
                            width: 100.w,
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
                                child: Center(child: Text("Half day",style: getRegularSmall(),)),
                         ),
                          SizedBox(width: 10,),
                          Container(
                            height: 30.h,
                            width: 100.w,
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
                                child: Center(child: Text("Second day",style: getRegularSmall(),)),
                         ),
                       ],
                     ),
                     SizedBox(height: 10,),
                     Center(
                       child: Container(
                              height: 210.h,
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
                       ),
                     ),
                     SizedBox(height: 10,),
                      tap(
                      text: "Upload Attachments",
                    
                    ),
                     SizedBox(height: 5,),
                    tap(
                      onPress: () {},
                      text: "Submit Application",
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 70,
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 140,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            '22',
                            style: getRegularStyle(color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Total',
                              style: getRegularStyle(),
                            ),
                            Text(
                              'Day Clinc',
                              style: getRegularStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 60,
                  width: 140,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            '10',
                            style: getRegularStyle(color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Total',
                              style: getRegularStyle(),
                            ),
                            Text(
                              'Day Clinc',
                              style: getRegularStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
