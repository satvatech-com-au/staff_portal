import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/skills_competencies.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../../widgets/components/common_widgets.dart';
import '../../../widgets/controllers/text_controllers.dart';

class WorkHistory extends StatelessWidget {
   WorkHistory({super.key});
  TextController textController = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Work History',style: MediumHeaderStyle(),),
              SizedBox(height: 15.h,),
              textFields(
                  hintText: 'Company',
                  controller: textController.companyController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
              textFields(
                  hintText: 'Postion',
                  controller: textController.positionController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: textFields(
                      hintText: 'Date from:',
                  controller: textController.workfrmDateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: textFields(
                      hintText: 'Date To:',
                  controller: textController.workToDateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                    )
                  )
                ],
              ),
              SizedBox(height: 15.h,),
              Text('Educaton History',style: MediumHeaderStyle(),),
              SizedBox(height: 15.h,),
              textFields(
                  hintText: 'Institution',
                  controller: textController.institutionController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
              textFields(
                  hintText: 'Certicate',
                  controller: textController.eduCertificateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(height: 15.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    child: textFields(
                      hintText: 'Date ',
                  controller: textController.edufrmDateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: textFields(
                      hintText: 'Date To:',
                  controller: textController.eduToDateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                    )
                  )
                ],
              ),
              SizedBox(height: 15.h,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SkillsAndCompetencies()));
              }, child: Text('Contitune'))
            ],
          ),
        ),
      ),
    );
  }
}