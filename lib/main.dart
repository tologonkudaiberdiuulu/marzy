import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:marzy/features/home/page/home.dart';
import 'package:marzy/features/profile/page/profile.dart';
import 'package:marzy/features/splash/page/splash.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/themes.dart';
import 'package:marzy/shared/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
            elevatedButtonTheme: AppThemes.kElevationButtonTheme,
            appBarTheme: AppThemes.kAppBarTheme,
            textTheme: AppThemes.kTextTheme,
            inputDecorationTheme: AppThemes.kInputDecorationTheme,
          ),
          initialRoute: HomePage.route,
          getPages: RouteGenerator.route,
        );
      },
    );
  }
}
