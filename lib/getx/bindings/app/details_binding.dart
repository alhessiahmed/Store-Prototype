import 'package:get/get.dart';

import '../../controllers/app/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
