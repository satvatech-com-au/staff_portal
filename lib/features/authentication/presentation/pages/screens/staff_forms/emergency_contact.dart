import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/work_history.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../../widgets/components/common_widgets.dart';
import '../../../widgets/components/flutter_toast.dart';
import '../../../widgets/controllers/text_controllers.dart';

class EmergencyContact extends StatelessWidget {
 EmergencyContact({super.key});
TextController textController = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               Text('Emergency Contact',style: MediumHeaderStyle(),),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Full Name',
                  controller: textController.fullNameController,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Relationship',
                  controller: textController.relationshipController,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Residence Address',
                  controller: textController.emergresController,
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Contact',
                  controller: textController.emergContactController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Alternative Number',
                  controller: textController.emergAlternativeController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Email',
                  controller: textController.emergEmailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                ElevatedButton(onPressed: (){
                  toastInfo(msg: 'Contiune');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkHistory()));
                }, child: Text('Contiune'))
            ]),
        ),
      ),
    );
  }
}