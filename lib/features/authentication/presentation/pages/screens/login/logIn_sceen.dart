import 'package:hr_application/features/authentication/presentation/pages/screens/buttom_navigation.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: const _loginform(),
    );
  }
}

class _loginform extends StatelessWidget {
  const _loginform({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(400),
          ),
        ),
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
              const _username(),
              const _accessToken(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              tap(
                  text: "tap",
                  onPress: () {
                    LoginController(context:context );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const BottomNav()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class _accessToken extends StatelessWidget {
  const _accessToken({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        LoginController(context :context).handleLogin("token");
      } ,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
        
          decoration: const InputDecoration(
            prefixIconColor: Colors.blue,
            prefixIcon: Icon(Icons.brightness_auto),
            border: InputBorder.none,
            hintText: 'Token',
          ),
        ),
      ),
    );
  }
}

class _username extends StatelessWidget {
  const _username({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
         LoginController(context :context).handleLogin("email");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
            decoration:  InputDecoration(
              prefixIconColor: Colors.blue,
              prefixIcon: Icon(Icons.alternate_email_outlined),
              hintText: 'Email',
              border: InputBorder.none,
            ),
            validator: (value) => null),
      ),
    );
  }
}
