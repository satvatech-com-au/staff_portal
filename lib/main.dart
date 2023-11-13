import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'features/authentication/presentation/bloc_provider.dart';
import 'features/authentication/presentation/pages/screens/staff_forms/employee_details.dart';
import 'features/authentication/presentation/pages/screens/staff_forms/skills_competencies.dart';
import 'features/authentication/presentation/widgets/exports/exports.dart';

void main() {
  runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => 
    MyApp(),
  ) // Wrap your app

      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          designSize: const Size(460, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                locale: DevicePreview.locale(context),
                builder: DevicePreview.appBuilder,
                title: 'Flutter Demo',
                theme: ThemeData(
                  appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.black))
                ),
                darkTheme: ThemeData.dark(),
                // theme: ThemeData(
                //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                //   useMaterial3: true,
                //   appBarTheme: AppBarTheme(
                //     iconTheme: IconThemeData(color: Colors.white)
                //   )
                // ),
                home:
                   // OnboardingScreen2()
                    //CheckInOut()
                    //AboutApp()
                   // CreateApplicaton()
                    //Attendance()
                    //SplashScreen()
                    //More()
                    //Alert()
                    // Calendar()
                   // Home()
                    //ProfilePage()
               // BottomNav()
                //AdminLoginScreen(),
                //Alert()
                //SkillsAndCompetencies()
                PersonalInfo()
                //WorkHistory()
                );
          }),
    );
  }
}
