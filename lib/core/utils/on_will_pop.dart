import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/colors_manager.dart';

Future<bool> onWillPop(BuildContext context) async {
  return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: ColorsManager.bgColor,
          titlePadding: EdgeInsets.fromLTRB(20.w, 40.h, 30.w, 10.h),
          actionsPadding: EdgeInsets.fromLTRB(20.w, 0.h, 30.w, 10.h),
          contentPadding: EdgeInsets.fromLTRB(20.w, 0.h, 40.w, 60.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: Get.width),
              // Text('are_you_sure'.tr),
              const Text('هل انت متأكد؟'),
              Divider(
                thickness: 1,
                color: ColorsManager.dividerColor,
                endIndent: 70.w,
                height: 32.h,
              ),
            ],
          ),
          // content: Text('exit_the_app'.tr),
          content: const Text('اخرج من التطبيق'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, false), //<-- SEE HERE
              child: Text(
                // 'no'.tr,
                'لا',
                style: TextStyle(
                  color: ColorsManager.success,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true), // <-- SEE HERE
              child: Text(
                // 'yes'.tr,
                'نعم',
                style: TextStyle(
                  color: ColorsManager.danger,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ],
        ),
      )) ??
      false;
}
