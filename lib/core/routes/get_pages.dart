import 'package:get/get.dart';
import 'package:store/getx/bindings/app/details_binding.dart';
import 'package:store/screens/app/product_details_screen.dart';

import '../../getx/bindings/app/home_binding.dart';
import '../../screens/app/home_screen.dart';
import '../../screens/intro/launch_screen.dart';
import 'routes_manager.dart';

final List<GetPage<dynamic>> getPages = [
  // Intro
  GetPage(
    name: RoutesManager.launchScreen,
    page: () => const LaunchScreen(),
  ),
  GetPage(
    name: RoutesManager.homeScreen,
    page: () => const HomeScreen(),
    bindings: [
      HomeBinding(),
      // CategoryBinding(),
    ],
  ),
  GetPage(
    name: RoutesManager.productDetailsScreen,
    page: () => const ProductDetailsScreen(),
    binding: DetailsBinding(),
  ),
];
