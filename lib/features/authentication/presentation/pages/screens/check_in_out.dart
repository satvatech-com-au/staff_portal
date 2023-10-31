import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class CheckInOut extends StatefulWidget {
  const CheckInOut({super.key});

  @override
  State<CheckInOut> createState() => _CheckInOutState();
}

class _CheckInOutState extends State<CheckInOut> {
  final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
  final List<String> dates = ['24', '25', '26', '27', '28'];
  late DateTime currentDateTime;
  late Timer timer;
  @override
  void initState() {
    super.initState();

    // Initialize the current date and time.
    currentDateTime = DateTime.now();

    // Create a timer to update the date and time every second.
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        currentDateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed to prevent memory leaks.
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Check In and Out",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        actions: const [Icon(Icons.calendar_month)],
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
              top: 30,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '${currentDateTime.hour}:${currentDateTime.minute}:${currentDateTime.second}',
                                  style: BoldHeaderstextStyle(),
                                ),
                                Text(
                                    '${currentDateTime.year}-${currentDateTime.month}-${currentDateTime.day}')
                              ],
                            ),
                            const VerticalDivider(
                              thickness: 2,
                              color: Colors.grey,
                              width: 30,
                            ),
                            const Column(
                              children: [
                                Icon(
                                  Icons.toggle_off,
                                  size: 45,
                                  color: Colors.blue,
                                ),
                                Text("Remote Work")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.red.shade700,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      blurRadius: 10,
                                      spreadRadius: 1,
                                      offset: const Offset(4, 4)),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.access_alarm,
                                  size: 80,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Check Out",
                                  style: getRegularSmaller(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Time can be a source of anxiety,",
                            style: getRegularSmall(),
                          ),
                          Text(
                            "Each moment in time is unique, and once it passes,",
                            style: getRegularSmall(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Summary",
                        style: MediumHeaderStyle(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 90.h,
                            width: 90.w,
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
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.alarm,
                                    color: Colors.blue,
                                    size: 35,
                                  ),
                                ),
                                Text('9:00 am'),
                                Text('check in')
                              ],
                            ),
                          ),
                          Container(
                            height: 90.h,
                            width: 90.w,
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
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.alarm_off,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                ),
                                Text('1:00 am'),
                                Text('check out')
                              ],
                            ),
                          ),
                          Container(
                            height: 90.h,
                            width: 90.w,
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
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.alarm_on_rounded,
                                    color: Colors.orange,
                                    size: 35,
                                  ),
                                ),
                                Text('8 hours'),
                                Text('working')
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 60,
              child: Container(
                height: 110.h,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(days.length, (index) {
                        return Column(
                          children: [
                            Text(
                              days[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              dates[index],
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        );
                      }),
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
}

// class CalendarGrid extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 7, // 7 columns for the days of the week
//       ),
//       itemCount: 31, // Number of days in the month
//       itemBuilder: (context, index) {
//         final day = index + 1; // Day of the month
//         // You can customize the cell's content here
//         return Container(
//           decoration: BoxDecoration(
//             border: Border.all(),
//           ),
//           child: Center(
//             child: Text(
//               day.toString(),
//               style: TextStyle(fontSize: 18),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }





