import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future showMyBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.w, 16.h, 16.w, 16.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اختر المقاس',
                  style: TextStyle(fontSize: 24.sp),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'تم',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                const Text('المقاس:'),
                const Text('IT'),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'جدول القياسات',
                    style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 56.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    width: 50.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.grey),
                    ),
                    duration: const Duration(milliseconds: 500),
                    child: const Center(
                      child: Text('38 IT'),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8.w);
                },
                itemCount: 6,
              ),
            ),
            SizedBox(height: 32.h),
            ElevatedButton(
              onPressed: () async {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width - 32, 56),
                backgroundColor: Colors.red,
              ),
              child: const Text('اضافة الى حقيبة التسوق'),
            ),
          ],
        ),
      );
    },
  );
}
