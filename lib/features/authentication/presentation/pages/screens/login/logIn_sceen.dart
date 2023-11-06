import 'package:hr_application/features/authentication/presentation/pages/screens/buttom_navigation.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/staff_forms/sign_in_page.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/common_widgets.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

import '../../../widgets/exports/exports.dart';
import 'login_Controller.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminLoginScreen> createState() => _LogInState();
}

class _LogInState extends State<AdminLoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isValidEmail(String email) {
   
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Container(
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(400),
              ),
            ),
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Hey There!",
                              style: MediumHeaderStyle(),
                            ),
                            Text(
                              "Contiune to login",
                              style: getRegularStyleSmall(),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: const Text(
                            "🤪",
                            style: TextStyle(fontSize: 40),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        prefixIcon: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      } else if (!isValidEmail(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      obscureText:
                          true, 
                      decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.password),
                           enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                          ),
                       validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters long';
                      }
                      if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$%^&*])')
                          .hasMatch(value)) {
                        return 'Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
                      }
                      return null; // Return null to indicate the input is valid
                    },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    
                   ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                        if (_formKey.currentState!.validate()) {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                        }else{
                          return null;
                        }
                      },
                      child: Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        );
  }
}





