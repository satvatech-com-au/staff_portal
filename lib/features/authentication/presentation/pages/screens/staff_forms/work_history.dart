import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/skills_competencies.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../../widgets/components/common_widgets.dart';
import '../../../widgets/controllers/text_controllers.dart';

class WorkHistory extends StatefulWidget {
  WorkHistory({super.key});

  @override
  State<WorkHistory> createState() => _WorkHistoryState();
}

class _WorkHistoryState extends State<WorkHistory> {
  TextController textController = TextController();
  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  // ignore: non_constant_identifier_names
  List<DropdownMenuItem<String>> _dropdownItems = [
    DropdownMenuItem(value: '-1', child: Text('Date To :')),
    DropdownMenuItem(value: '1', child: Text('2001')),
    DropdownMenuItem(value: '2', child: Text('2002')),
    DropdownMenuItem(value: '3', child: Text('2003')),
    DropdownMenuItem(value: '4', child: Text('2004')),
    DropdownMenuItem(value: '5', child: Text('2005')),
    DropdownMenuItem(value: '6', child: Text('2006')),
  ];

  List<DropdownMenuItem<String>> _dateToItems = [
    DropdownMenuItem(value: '-1', child: Text('Date From :')),
    DropdownMenuItem(value: '1', child: Text('2001')),
    DropdownMenuItem(value: '2', child: Text('2002')),
    DropdownMenuItem(value: '3', child: Text('2003')),
    DropdownMenuItem(value: '4', child: Text('2004')),
    DropdownMenuItem(value: '5', child: Text('2005')),
    DropdownMenuItem(value: '6', child: Text('2006')),
  ];

  var _value = '-1';

  List<Widget> textField = [];
  int textFieldCount = 0;
  void addTextField() {
    setState(() {
      textField.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                label: Text('Position'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                  color: Colors.blue,
                ))),
          ),
        ),
      );
      textFieldCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: Text(
          'Work History',
          style: MediumHeaderStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Company',
                  controller: textController.companyController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Postion :',
                  controller: textController.positionController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                TextButton(
                    onPressed: addTextField, child: Text('Add more Postion')),
                Column(children: textField),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 45.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: DropdownButtonFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            value: _value,
                            items: _dateToItems,
                            onChanged: (v) {})),
                    Container(
                      height: 40.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all()),
                      child: Center(
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(border: InputBorder.none),
                            value: _value,
                            items: _dropdownItems,
                            onChanged: (v) {}),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),

                Center(
                  child: Text(
                    'Educaton History',
                    style: MediumHeaderStyle(),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Institution',
                  controller: textController.institutionController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Certicate',
                  controller: textController.eduCertificateController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(15.0)),
                      child:DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                        value: _value,
                        items: _dateToItems,
                         onChanged: (v){}
                         )
                    ),
                    Container(
                      height: 40.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all()),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none
                            ),
                        value: _value,
                        items: _dropdownItems,
                         onChanged: (v){}
                         ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SkillsAndCompetencies()));
                      },
                      child: Text('Contitune')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
