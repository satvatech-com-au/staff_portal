import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "NOTIFICATIONS",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 200,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
            ),
          ),
          ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 3.h,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => Slidable(
              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  const SlidableAction(
                                    onPressed: null,
                                    backgroundColor: Color(0xFFFE4A49),
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    label: 'Delete',
                                  ),
                                  SlidableAction(
                                    onPressed: null,
                                    backgroundColor: Colors.blue.shade400,
                                    foregroundColor: Colors.white,
                                    icon: Icons.remove_red_eye,
                                    label: 'View',
                                  ),
                                ],
                              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(child: card()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class card extends StatefulWidget {
  const card({
    super.key,
  });

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  Color containerColor = Colors.white;
  bool isTapped = false;

  void _changeColor() {
    setState(() {
      if (isTapped) {
        containerColor = Colors.white;
      } else {
        containerColor = Colors.redAccent;
      }
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 35,
      child: GestureDetector(
        onTap: () {
          _changeColor();
          showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text('Notification'),
                  content: Text(
                      'The content inside the dialog includes a title, some text, and a "Close" button, similar to the previous example.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              }));
        },
        child: Container(
          height: 70,
          width: 350,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 4)),
              ]),
          child: ListTile(
            leading: CircleAvatar(),
            title: Text("Tech Launch"),
            subtitle: Text("friday Ago"),
            trailing: Column(
              children: [
                Container(
                  height: 20.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(child: Text("2:00")),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 20.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(child: Text("Mon,16,")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
