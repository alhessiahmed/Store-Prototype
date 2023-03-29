import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/app/product_details_screen.dart';
import '../screens/app/redirect_screen.dart';

class DressWidget extends StatelessWidget {
  DressWidget({
    required this.imgName,
    required this.title,
    required this.description,
    required this.price,
    required this.hasColors,
    required this.newSeason,
    required this.onTap,
    super.key,
  });
  String imgName;
  String title;
  String description;
  String price;
  bool hasColors;
  bool newSeason;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 800),
      // transitionType: ContainerTransitionType.fadeThrough,
      closedColor: Colors.transparent,
      closedElevation: 0,
      closedBuilder: (context, action) {
        return Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                //IntrinsicWidth()
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/$imgName',
                        height: 200.h,
                        width: (Get.width / 2) - 40,
                        fit: BoxFit.cover,
                      ),
                      PositionedDirectional(
                        // top: 1.h,
                        end: 1.w,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                Text(title),
                Text(
                  description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 8.h),
                Visibility(
                  visible: hasColors,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: SizedBox(
                      height: 27.h,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 4.h),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 9.r,
                                child: CircleAvatar(
                                  backgroundColor: index == 0
                                      ? Colors.white
                                      : index == 1
                                          ? Colors.orange
                                          : Colors.red,
                                  radius: 8.r,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            PositionedDirectional(
              bottom: 110.h,
              start: 43.w,
              child: Visibility.maintain(
                visible: newSeason,
                child: Container(
                  padding: EdgeInsets.all(2.r),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: const Text(
                    'الموسم الجديد',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      openBuilder: (context, action) {
        // return const RedirectScreen();
        return const ProductDetailsScreen();
      },
    );
  }
}
