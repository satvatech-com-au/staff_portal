import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/buttom_navigation.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/common_widgets.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../widgets/components/flutter_toast.dart';
import '../../../widgets/controllers/text_controllers.dart';

class SkillsAndCompetencies extends StatelessWidget {
   SkillsAndCompetencies({super.key});
TextController textController = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        
        title: Text('Skills And Competencies',style: MediumHeaderStyle(),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
               
                SizedBox(height: 20.h,),
                  textFields(
                  hintText: 'Key skills Set',
                  controller: textController.skillsSetController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Language Spoken',
                  controller: textController.languageSpokenController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                 SizedBox(height: 15.h,),
                 Text('Documents Attachments(File Upload)',style: MediumHeaderStyle(),),
                 SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Certificates',
                  controller: textController.documentCertificateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixTicon: IconButton(onPressed: ()async{
                    PermissionStatus cameraStatus = await Permission.camera.request();
                    if(cameraStatus == PermissionStatus.granted){

                    }
                    if(cameraStatus == PermissionStatus.denied){
                      toastInfo(msg: 'You need to provide camera access');
                    }
                    if(cameraStatus == PermissionStatus.permanentlyDenied){
                      openAppSettings();
                    }
                  }, icon: Icon(Icons.upload))
                ),
                    SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Driver"s License',
                  controller: textController.driveLicenseController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                    SizedBox(height: 15.h,),
                textFields(
                  hintText: 'Copy of ID"s',
                  controller: textController.iDController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                 SizedBox(height: 15.h,),
                 Text('Bank Information',style: MediumHeaderStyle(),),
                 textFields(
                  hintText: 'Bank Name',
                  controller: textController.iDController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                  textFields(
                  hintText: 'Account Number',
                  controller: textController.iDController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
                 textFields(
                  hintText: 'Branch',
                  controller: textController.iDController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
               
                  SizedBox(height: 15.h,),
                ElevatedButton(onPressed: (){
                  toastInfo(msg: 'Thanks for Completing The forms');
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                }, child: Text('Contiune'))
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}