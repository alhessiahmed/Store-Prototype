import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController._();
  static HomeController? _instance;
  factory HomeController() {
    return _instance ??= HomeController._();
  }
  final pageIndex = 0.obs;
}
