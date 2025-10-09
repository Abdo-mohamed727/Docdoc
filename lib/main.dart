import 'package:docdoc/Core/Helpers/app_constants.dart';
import 'package:docdoc/Core/Routing/router.dart';
import 'package:docdoc/Core/Routing/routes.dart';
import 'package:docdoc/Core/Theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
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
        title: AppConstants.appname,
        theme: ThemeData(primaryColor: AppColors.primary),
        onGenerateRoute: AppRouter.OngenerateRoute,
        initialRoute: AppRoutes.onboardingScreen,
      ),
    );
  }
}
