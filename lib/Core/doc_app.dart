import 'package:docdoc/core/networking/app_constants.dart';
import 'package:docdoc/core/routing/router.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
    DocApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ApiConstants.appname,
        theme: ThemeData(primaryColor: AppColors.primary),
        onGenerateRoute: appRouter.OngenerateRoute,
        initialRoute: AppRoutes.onboardingScreen,
      ),
    );;
  }
}