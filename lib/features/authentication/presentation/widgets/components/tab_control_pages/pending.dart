import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../exports/exports.dart';

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Leave Summary",style:MediumHeaderStyle() ,),
          const SizedBox(height: 20,),
          Container(
            height: 70.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(4, 4)),
            ]),
            child:  Row(
              children:[
                const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Text(""),
                        radius: 8,
                      ),
                      VerticalDivider(
                        indent: 10,
                        thickness: 3,
                        width: 5,
                        endIndent: 5,
                        color: Colors.black,
                      ),
                      CircleAvatar(
                        child: Text(""),
                        radius: 8,
                      )
                    ],
                  ),
                ),
                
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  Text("22,jan 2022",style: getRegularSmall(),),
                  const SizedBox(height: 11,),
                  Text("22,jan 2022",style: getRegularSmall(),)
                ],
               ),
             ),
             const SizedBox(width: 100,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Center(child: Text("Pending",style: getRegularSmall(color: Colors.white),)),
                  ),
                  Text("22,jan 2022",style: getRegularSmall(),)
                ],
               ),
             )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Enter Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
             // controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Type here',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle the data entered in the text field
                //String enteredText = _textEditingController.text;
              //  print('Entered Text: $enteredText');
                // Close the bottom sheet
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      );
    },
  );
}
