import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/app2/screens/home/home_screen.dart';
import '../../core/routes/routes_manager.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () {
    //     // Get.offNamed(
    //     //   SharedPrefController().loggedIn && SharedPrefController().rememberMe
    //     //       ? RoutesManager.homeScreen
    //     //       : SharedPrefController().firstVisit
    //     //           ? RoutesManager.onboardingScreen
    //     //           : RoutesManager.signInScreen,
    //     // );
    //     Get.offAllNamed(RoutesManager.homeScreen);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Get.to(HomeScreen());
                Get.to(() => HomeScreen());
              },
              child: Text(
                'الفكرة الاولى',
                style: TextStyle(fontSize: 32.sp),
              ),
            ),
            TextButton(
              onPressed: () {
                // Get.offAllNamed(RoutesManager.homeScreen);
                Get.toNamed(RoutesManager.homeScreen);
              },
              child: Text(
                'الفكرة الثانية',
                style: TextStyle(fontSize: 32.sp),
              ),
            ),
          ],
        ),
      ),
      // Center(
      //   child: TextButton(
      //     onPressed: () {
      //       Get.offAllNamed(RoutesManager.homeScreen);
      //     },
      //     child: const Text('جاري التشغيل ...'),
      //   ),
      // ),
      // appBar: ConstantsManager.introAppBar,
      // body: Center(
      //   child: SvgPicture.asset(
      //     ImagesManager.logo,
      //     height: 124.h,
      //   ),
      // ),
    );
  }
}
