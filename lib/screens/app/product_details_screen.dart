import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/getx/controllers/app/details_controller.dart';

import '../../core/utils/show_bottom_sheet.dart';
import '../../widgets/details_expansion_tile.dart';

class ProductDetailsScreen extends GetView<DetailsController> {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailsController());
    return Scaffold(
      appBar: AppBar(),
      body:
          // Obx(
          // () =>
          SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/dress2.jpeg',
                      height: Get.height * (3.25 / 5),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 16.h),
                    const Text('الموسم الجديد'),
                  ],
                ),
                PositionedDirectional(
                  end: 24,
                  bottom: 10,
                  child: CircleAvatar(
                    radius: 32.r,
                    backgroundColor: Colors.grey.shade800,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 32.r,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Text(
              'اليزابيتا فرانكي',
              style: TextStyle(fontSize: 28.sp),
            ),
            Text(
              'فستان طويل بتصميم حصري وبدون اكمام',
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(height: 8.h),
            Text(
              '4,425 AED',
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(height: 8.h),
            const Text('شامل ضريبة القيمة المضافة'),
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: () async {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.w, 16.h, 16.w, 16.h),
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
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 42.h),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.w),
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  icon: const Icon(Icons.close),
                                                ),
                                                SizedBox(width: 24.w),
                                                Text(
                                                  'دليل مقاسات الملابس النسائية',
                                                  style: TextStyle(
                                                    fontSize: 20.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              // DropdownButton(items: [Text('data')], onChanged: onChanged)
                                              Container(
                                                height: 50,
                                                width: Get.width,
                                                color: Colors.red,
                                              ),
                                            ],
                                          ),
                                          Table(
                                            // defaultVerticalAlignment:
                                            //     TableCellVerticalAlignment
                                            //         .middle,
                                            border: TableBorder.all(
                                              color: Colors.grey,
                                            ),
                                            children: const [
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('36'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('XXS')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('38'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('XS')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('40'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('S')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('42'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('M')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('44'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('L')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('46'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('XL')),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    // verticalAlignment:
                                                    //     TableCellVerticalAlignment
                                                    //         .middle,
                                                    child: Center(
                                                      child: Text('48'),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Center(
                                                        child: Text('XXL')),
                                                  ),
                                                ],
                                              ),
                                              // TableRow()
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
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
                                return InkWell(
                                  onTap: () {
                                    controller.selectedSize(index);
                                    print(index);
                                  },
                                  child: Obx(
                                    () => AnimatedContainer(
                                      width:
                                          index != controller.selectedSize.value
                                              ? 50.w
                                              : 60.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                          color: index ==
                                                  controller.selectedSize.value
                                              ? Colors.orange
                                              : Colors.grey,
                                        ),
                                      ),
                                      duration:
                                          const Duration(milliseconds: 300),
                                      child: const Center(
                                        child: Text('38 IT'),
                                      ),
                                    ),
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
                          Obx(
                            () => controller.selectedSize > 5
                                ? ElevatedButton(
                                    onPressed: null,
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(Get.width - 32, 56),
                                    ),
                                    child: const Text('اضافة الى حقيبة التسوق'),
                                  )
                                : ElevatedButton(
                                    onPressed: () async {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(Get.width - 32, 56),
                                      backgroundColor: Colors.red,
                                    ),
                                    child: const Text('اضافة الى حقيبة التسوق'),
                                  ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Get.width - 32, 56),
                backgroundColor: Colors.red,
              ),
              child: const Text('اضافة الى حقيبة التسوق'),
            ),
            const Divider(height: 32),
            DetailsExpansionTile(
              title: 'نصيحة خبيرة الموضة',
              subTitle:
                  'لا غنى عن اقتناء هذا الفستان الطويل من اليزابيتا فرانكي بفضل تصميمه الجذاب الذي يمكن تنسيقه مع صندل لإطلالة يومية رائعة أو حذاء بكعب رفيع في المناسبات المسائية',
            ),
            DetailsExpansionTile(
              title: 'نصيحة خبيرة الموضة',
              subTitle:
                  'لا غنى عن اقتناء هذا الفستان الطويل من اليزابيتا فرانكي بفضل تصميمه الجذاب الذي يمكن تنسيقه مع صندل لإطلالة يومية رائعة أو حذاء بكعب رفيع في المناسبات المسائية',
            ),
            DetailsExpansionTile(
              title: 'نصيحة خبيرة الموضة',
              subTitle:
                  'لا غنى عن اقتناء هذا الفستان الطويل من اليزابيتا فرانكي بفضل تصميمه الجذاب الذي يمكن تنسيقه مع صندل لإطلالة يومية رائعة أو حذاء بكعب رفيع في المناسبات المسائية',
            ),
            DetailsExpansionTile(
              title: 'نصيحة خبيرة الموضة',
              subTitle:
                  'لا غنى عن اقتناء هذا الفستان الطويل من اليزابيتا فرانكي بفضل تصميمه الجذاب الذي يمكن تنسيقه مع صندل لإطلالة يومية رائعة أو حذاء بكعب رفيع في المناسبات المسائية',
            ),
            DetailsExpansionTile(
              title: 'نصيحة خبيرة الموضة',
              subTitle:
                  'لا غنى عن اقتناء هذا الفستان الطويل من اليزابيتا فرانكي بفضل تصميمه الجذاب الذي يمكن تنسيقه مع صندل لإطلالة يومية رائعة أو حذاء بكعب رفيع في المناسبات المسائية',
            ),
          ],
        ),
      ),
      // ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       backgroundColor: Colors.transparent,
      //       pinned: true,
      //       snap: false,
      //       floating: false,
      //       expandedHeight: Get.height - 100,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: const Text('اليزابيث فرانكي'),
      //         centerTitle: true,
      //         background: Stack(
      //           children: [
      //             Column(
      //               children: [
      //                 Image.asset(
      //                   'assets/images/dress2.jpeg',
      //                   height: Get.height * (3 / 4),
      //                   fit: BoxFit.cover,
      //                 ),
      //                 Text('الموسم الجديد'),
      //               ],
      //             ),
      //             PositionedDirectional(
      //               end: 24,
      //               bottom: 95,
      //               child: CircleAvatar(
      //                 radius: 32.r,
      //                 backgroundColor: Colors.grey.shade800,
      //                 child: Icon(Icons.favorite_border_outlined, size: 32.r),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         (_, int index) {
      //           return ListTile(
      //             leading: Container(
      //               padding: EdgeInsets.all(8),
      //               width: 100,
      //               child: Placeholder(),
      //             ),
      //             title: Text('Place ${index + 1}', textScaleFactor: 2),
      //           );
      //         },
      //         childCount: 20,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
