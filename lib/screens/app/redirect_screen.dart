import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/routes/routes_manager.dart';

class RedirectScreen extends StatefulWidget {
  const RedirectScreen({super.key});

  @override
  State<RedirectScreen> createState() => _RedirectScreenState();
}

class _RedirectScreenState extends State<RedirectScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 0),
      () {
        Get.offNamed(RoutesManager.productDetailsScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
