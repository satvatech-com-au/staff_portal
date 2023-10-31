import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/common_widgets.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 150
                ),
                child: Text("Profile",style: BoldHeaderstextStyle(color: Colors.white),),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                    )

                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 110,
                    left: 9.0,
                    right: 9.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: Colors.blue,),
                            hintText: "Email",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mobile_friendly,color: Colors.blue,),
                            hintText: "Mobile",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Container(
                        height: 50.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.card_membership,color: Colors.blue,),
                            hintText: "CIINC",
                            border: InputBorder.none
                          ),
                        ),
                      ),
                       Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.format_align_center,color: Colors.blue,),
                            hintText: "DGB",
                            border: InputBorder.none
                          ),
                        ),
                      )
                        ],
                      ),
                      const SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.terminal,color: Colors.blue,),
                            hintText: "Team Placements",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: Colors.blue,)
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.merge_type,color: Colors.blue,),
                            hintText: "Type of Job",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: Colors.blue,)
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Container(
                        height: 50.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_month,color: Colors.blue,),
                            hintText: "Start",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.blue,)
                          ),
                        ),
                      ),
                       Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_today,color: Colors.blue,),
                            hintText: "Start Date",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.blue,)
                          ),
                        ),
                      )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text("View Your Placement Timeline",style: getMedium(color: Colors.blue),),
                      const SizedBox(height: 20,),
                      tap(
                        onPress: (){},
                        text: "Save",
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 70,
              child: Container(
                height: 120,
                width: 250,
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
              const Stack(
                children: [CircleAvatar(
                  radius: 30,
                ),
                Positioned(
                  left: 35,
                  top: 30,
                  child: Icon(Icons.camera_alt,color: Colors.blue,))
             ] ),
             const SizedBox(height: 5,),
             Text("Bismark Oudro",style: getMedium(),),
               Text("UX|UI Designer",style: getMedium(),)
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