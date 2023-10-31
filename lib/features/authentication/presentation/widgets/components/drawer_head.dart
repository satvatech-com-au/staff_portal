import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70.0)
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
          SizedBox(height: 10,),
          Text("NANA ADDO",style: BoldHeaderstextStyle(color: Colors.white),),
          SizedBox(height: 10,),
          Text("Softwear Expect",style: RegularHeaderStyle(),)
        ],
      ),
    );
  }
}

