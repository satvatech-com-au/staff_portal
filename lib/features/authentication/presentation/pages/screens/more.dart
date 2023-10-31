import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/tab_control_widget.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          Icon(
            Icons.calendar_month,
            color: Colors.white,
          )
        ],
        title: Text(
          "Leaves",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Stack(children: [
          Container(
            height: 120.h,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 120.h,
                width: 110,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.black)),
                            child: Center(child: Text("22",style: MediumHeaderStyle(),)),
                      ),
                      Text("Ending"),
                      Text("Leavers")
                    ],
                  ),
                ),
              ),
              Container(
                height: 120.h,
                width: 110,
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
                child: Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.blue)),
                            child: Center(child: Text("1",style: MediumHeaderStyle(color: Colors.lightBlueAccent),)),
                      ),
                      Text("Active"),
                      Text("Leavers")
                    ],
                  ),
                ),
              ),
              Container(
                height: 120.h,
                width: 110,
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.yellow)),
                            child: Center(child: Text("0",style: MediumHeaderStyle(color: Colors.yellow),)),
                      ),
                      Text("New"),
                      Text("Leavers")
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
        SizedBox(height: 10),
        Expanded(child: TabControlWidget()),
      ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {}),
    );
  }
}
