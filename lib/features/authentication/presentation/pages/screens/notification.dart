import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("NOTIFICATIONS",style: BoldHeaderstextStyle(color: Colors.white),),
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
                height: 10.h,
              ), 
            itemCount: 20,
            itemBuilder: (context ,index) =>Padding(
              padding: const EdgeInsets.all(8.0),
              child: card(),
            ),
            ),
          
        ],
      ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 35,
      child: Container(
        height: 70,
        width: 350,
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
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(child: Text("2:00")),
                  ),
                  SizedBox(height: 5,), 
                  Container(
                    height: 20.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child:Center(child: Text("Mon,16,")) ,
                  )
                ],
              ),
            ),
      ),
    );
  }
}

    