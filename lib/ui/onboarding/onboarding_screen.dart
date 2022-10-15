import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/shared.dart';
import '../../shared/utils/utils.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: CommonWidget.pngImage('onboarding_background',
                  size: Size(
                      SizeConfig().screenWidth, SizeConfig().screenHeight))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommonWidget.svgImage('ic_app_logo', size: Size(48, 58)),
                  CommonWidget.rowHeight(height: 35.66),
                  StyleText(
                    text: 'greeting'.tr,
                    textColor: AppColors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                  CommonWidget.rowHeight(height: 19),
                  StyleText(
                    text: 'fast_delivery'.tr,
                    textColor: AppColors.lightGrey,
                    fontSize: 16,
                  ),
                  CommonWidget.rowHeight(height: 40),
                  CustomButton(
                    buttonText: 'get_started'.tr,
                    onPressed: () {
                      final prefs = Get.find<SharedPreferences>();
                      prefs.setBool(StorageConstants.onboarding, true);
                    },
                    buttonColor: AppColors.primary,
                    radius: 19,
                  ),
                  CommonWidget.rowHeight(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
