import 'package:booking_appointment/core/routing/routes.dart';
import 'package:booking_appointment/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
class DocApp extends StatelessWidget {

  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: true,
      child: MaterialApp.router(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsMaster.mainBlue,
          scaffoldBackgroundColor: Colors.white,

        ),
        debugShowCheckedModeBanner: false,
        routerConfig: Routes.router,
      ),

    );
  }
}
