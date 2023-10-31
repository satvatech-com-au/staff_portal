import 'package:hr_application/features/authentication/presentation/pages/onboarding/onboarding_screen2.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

import 'features/authentication/presentation/bloc_provider.dart';


void main() {
  runApp(const MyApp());

    
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        designSize: const Size(460, 690),
        minTextAdapt: true,
        splitScreenMode: true,
         builder: (_ , child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white)
            )
          ), 
          home:OnboardingScreen2()
          //CheckInOut()
          //AboutApp()
          // CreateApplicaton()
          //Attendance()
          //SplashScreen()
          //More()
          //Alert()
          //Calander()
         //Home()
         //ProfilePage()
          //BottomNav()
          //AdminLoginScreen(),
        );
       }
      ),
    );
  
  }
}

