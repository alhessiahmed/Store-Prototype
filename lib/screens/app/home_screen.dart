import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/getx/controllers/app/home_controller.dart';
import 'package:store/models/bn_screen.dart';
import 'package:store/screens/app/tabs/cart_tab.dart';
import 'package:store/screens/app/tabs/category_tab.dart';
import 'package:store/screens/app/tabs/design_tab.dart';
import 'package:store/screens/app/tabs/home_tab.dart';
import 'package:store/screens/app/tabs/more_tab.dart';

import '../../core/utils/on_will_pop.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  static final List<BnScreen> screens = [
    BnScreen(const HomeTab(), 'ما وصل حديثاً'),
    BnScreen(const CategoryTab(), 'الفئات'),
    BnScreen(const DesignTab(), 'المصممون'),
    BnScreen(const CartTab(), 'الحقيبة'),
    BnScreen(const MoreTab(), 'المزيد'),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(screens[controller.pageIndex.value].title),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
              ),
            ],
          ),
          body: screens[controller.pageIndex.value].screen,
          bottomNavigationBar: BottomNavigationBar(
            // type: BottomNavigationBarType.fixed,
            type: BottomNavigationBarType.shifting,
            currentIndex: controller.pageIndex.value,
            onTap: (value) => controller.pageIndex.value = value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            // fixedColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.circle_outlined),
                label: 'اكتشف',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined),
                label: 'الفئات',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sort_by_alpha_outlined),
                label: 'المصممون',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'الحقيبة',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                label: 'المزيد',
              ),
            ],
          ),
        ),
        onWillPop: () async {
          if (controller.pageIndex.value != 0) {
            controller.pageIndex.value = 0;
            return false;
          } else {
            return onWillPop(context);
          }
        },
      ),
    );
  }
}
