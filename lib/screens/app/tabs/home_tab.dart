import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/dress_widget.dart';
import '../../../widgets/filter_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 64.h,
          child: ListView(
            padding: EdgeInsets.all(8.r),
            scrollDirection: Axis.horizontal,
            children: [
              FilterWidget(icon: Icons.tune, title: 'تصنيف'),
              FilterWidget(icon: Icons.swap_vert, title: 'ترتيب'),
              FilterWidget(title: 'الملابس'),
              FilterWidget(title: 'الأحذية'),
              FilterWidget(title: 'الحقائب'),
              FilterWidget(title: 'العطور'),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 20.h),
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              crossAxisCount: 2,
              // childAspectRatio: 200 / 300,
              mainAxisExtent: 328.h,
            ),
            itemBuilder: (context, index) {
              return index == 0
                  ? DressWidget(
                      imgName: 'dress1.jpeg',
                      title: 'سولاس لندن',
                      description: 'فستان ابيض سادة طويل بأكمام قصيرة',
                      price: 'AED 2,700',
                      hasColors: index % 2 == 0,
                      newSeason: index % 2 == 1,
                      onTap: () {
                        print(index);
                      },
                    )
                  : index == 1
                      ? DressWidget(
                          imgName: 'dress2.jpeg',
                          title: 'اليزابيث فرانكي',
                          description: 'فستان برتقالي سادة طويل بدون اكمام ',
                          price: 'AED 4,425',
                          hasColors: index % 2 == 0,
                          newSeason: index % 2 == 1,
                          onTap: () {
                            print(index);
                          },
                        )
                      : index == 2
                          ? DressWidget(
                              imgName: 'dress3.jpeg',
                              title: 'سولاس لندن',
                              description: 'فستان ابيض سادة طويل بأكمام قصيرة',
                              price: 'AED 2,700',
                              hasColors: index % 2 == 0,
                              newSeason: index % 2 == 1,
                              onTap: () {
                                print(index);
                              },
                            )
                          : index == 3
                              ? DressWidget(
                                  imgName: 'dress4.jpg',
                                  title: 'سولاس لندن',
                                  description:
                                      'فستان ابيض سادة طويل بأكمام قصيرة',
                                  price: 'AED 2,700',
                                  hasColors: index % 2 == 0,
                                  newSeason: index % 2 == 1,
                                  onTap: () {
                                    print(index);
                                  },
                                )
                              : DressWidget(
                                  imgName: 'dress5.jpg',
                                  title: 'سولاس لندن',
                                  description:
                                      'فستان ابيض سادة طويل بأكمام قصيرة',
                                  price: 'AED 2,700',
                                  hasColors: index % 2 == 0,
                                  newSeason: index % 2 == 1,
                                  onTap: () {
                                    print(index);
                                  },
                                );
            },
          ),
        ),
      ],
    );
  }
}
