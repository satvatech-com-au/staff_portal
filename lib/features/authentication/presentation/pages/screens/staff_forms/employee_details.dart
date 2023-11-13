import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/contact_info.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/common_widgets.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

import '../../../widgets/components/flutter_toast.dart';
import '../../../widgets/controllers/text_controllers.dart';


class PersonalInfo extends StatelessWidget {
   PersonalInfo({super.key});

  TextController textController = TextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        
        title: Text('Employee Details',style: MediumHeaderStyle(),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                SizedBox(height: 20.h,),
                  textFields(
                  hintText: 'Employee Name',
               controller: textController.employeeNameController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Date of Birth',
                  controller: textController.dateOfBirthController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                 SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Gender',
                  controller: textController.genderController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                    SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Nationality',
                  controller: textController.nationalityController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                    SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Religion',
                  controller: textController.religionController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                 SizedBox(height: 15.h,),
                  textFields(
                  hintText: 'Number of Childern',
                  controller: textController.numOfChildernController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                 textFields(
                  hintText: 'Social Security Number',
                  controller: textController.ssNumberController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                 textFields(
                  hintText: 'National ID',
                  controller: textController.nationalIDController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                  SizedBox(height: 15.h,),
                ElevatedButton(onPressed: (){
                  toastInfo(msg: 'Contiune');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactInfo()));
                }, child: Text('Contiune'))
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}