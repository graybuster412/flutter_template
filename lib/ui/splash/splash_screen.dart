import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';
import '../../shared/utils/utils.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonWidget.svgImage('app_logo'),
            ],
          ),
        ),
      ),
    );
  }
}
