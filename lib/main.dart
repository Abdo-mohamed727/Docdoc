import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/networking/app_constants.dart';
import 'package:docdoc/core/routing/router.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setUpGetIt();
  runApp(const MyApp());
  print("Debugger is connected ✅");

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ApiConstants.appname,
        theme: ThemeData(primaryColor: AppColors.primary),
        onGenerateRoute: AppRouter.OngenerateRoute,
        initialRoute: AppRoutes.onboardingScreen,
      ),
    );
  }
}
