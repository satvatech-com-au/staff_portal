import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          "Attendance",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        actions: [const Icon(Icons.calendar_month)],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
            Positioned(
              top: 50,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 140, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Attendance Summary",
                        style: MediumHeaderStyle(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 5.h,
                          ),
                          itemCount: 3,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: attendance(),
                          ),
                        ),
                      ),
                    
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 60,
              child: Container(
                height: 150.h,
                width: 300,
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.blue,
                          ),
                          Text(
                            "January ,2022",
                            style: getRegularStyle(color: Colors.blue),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.green)),
                                child: Center(
                                    child: Text(
                                  "22",
                                  style: MediumHeaderStyle(),
                                )),
                              ),
                              const Text("Ending"),
                              const Text("Leavers")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.red)),
                                child: Center(
                                    child: Text(
                                  "1",
                                  style: MediumHeaderStyle(
                                      color: Colors.lightBlueAccent),
                                )),
                              ),
                              const Text("Active"),
                              const Text("Leavers")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.yellow)),
                                child: Center(
                                    child: Text(
                                  "0",
                                  style:
                                      MediumHeaderStyle(color: Colors.yellow),
                                )),
                              ),
                              const Text("New"),
                              const Text("Leavers")
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container attendance() {
    return Container(
      height: 80.h,
      width: 415.w,
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
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.blue,
                  size: 35,
                ),
                Text("Check-in")
              ],
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
            width: 30,
            indent: 15,
            endIndent: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.alarm_off,
                  color: Colors.black,
                  size: 35,
                ),
                Text("Check-out")
              ],
            ),
          ),
          const VerticalDivider(
            thickness: 1,
            color: Colors.grey,
            width: 30,
            indent: 15,
            endIndent: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.alarm_on,
                  color: Colors.yellow,
                  size: 35,
                ),
                Text("20:30"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 20.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(
                      child: Text(
                    "remote",
                    style: getRegularSmaller(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 20.w,
                  width: 60.h,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(
                      child: Text(
                    "late arrval",
                    style: getRegularSmaller(color: Colors.white),
                  )),
                ),
                const Text('12:00')
              ],
            ),
          )
        ],
      ),
    );
  }
}
