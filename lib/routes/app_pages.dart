import 'package:get/get.dart';

import '../ui/onboarding/onboarding_screen.dart';
import '../ui/splash/splash_binding.dart';
import '../ui/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnboardingScreen(),
    ),
  ];
}
