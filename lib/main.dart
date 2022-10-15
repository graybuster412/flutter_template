import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'di.dart';
import 'lang/translation_service.dart';
import 'routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        initialRoute: Routes.SPLASH,
        defaultTransition: Transition.fade,
        smartManagement: SmartManagement.keepFactory,
        getPages: AppPages.routes,
        title: 'Gray Online Groceries',
        locale: TranslationService.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        translations: TranslationService(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
