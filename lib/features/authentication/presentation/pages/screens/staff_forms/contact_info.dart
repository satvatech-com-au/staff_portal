import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/emergency_contact.dart';

import '../../../widgets/components/common_widgets.dart';
import '../../../widgets/components/flutter_toast.dart';
import '../../../widgets/components/fonts_styles.dart';
import '../../../widgets/controllers/text_controllers.dart';
import '../../../widgets/exports/exports.dart';

class ContactInfo extends StatelessWidget {
   ContactInfo({super.key});

  TextController textController = TextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Contact Information',
                  style: MediumHeaderStyle(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                textFields(
                  hintText: 'Residential Address',
                  controller: textController.residentialAddressController,
                  keyboardType: TextInputType.streetAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Home Phone',
                  controller: textController.homePhoneController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Mobile Number',
                  controller: textController.mobileNumberController,
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
                textFields(
                  hintText: 'Email',
                  controller: textController.contactemailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                SizedBox(
                  height: 15.h,
                ),
               
                SizedBox(
                  height: 15.h,
                ),
                ElevatedButton(onPressed: () {
                  toastInfo(msg: 'Contiune');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmergencyContact()));
                }, child: Text('Contiune'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
