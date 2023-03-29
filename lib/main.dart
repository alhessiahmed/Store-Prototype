import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/routes/routes_manager.dart';
import '../../core/routes/get_pages.dart';
import 'app2/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          textDirection: TextDirection.rtl,
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.dark,
          themeMode: ThemeMode.light,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 255, 99, 52),
            ),
            textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // theme: ThemeManager.light(),
          darkTheme: ThemeData.dark(),
          initialRoute: RoutesManager.launchScreen,

          getPages: getPages,
          // unknownRoute: GetPage(
          //   name: RoutesManager.unknownScreen,
          //   page: () => const UnknownScreen(),
          // ),
          // translations: AppTranslations(),
          // locale: Locale(SharedPrefController().lang),
          locale: const Locale('ar'),
          fallbackLocale: const Locale('ar'),
        );
      },
    );
  }
}
