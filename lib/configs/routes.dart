import 'package:get/get.dart';
import 'package:zenlock/modules/home/screens/home.screen.dart';
import 'package:zenlock/modules/layout/bindings/layout.binding.dart';
import 'package:zenlock/modules/layout/screens/tour.page.dart';

List<GetPage> routesPages = [
  // GetPage(name: '/', page: () => const LandingScreen()),
  GetPage(name: '/', page: () => const TourPage()),
  // GetPage(name: '/agreement', page: () => AgreementPage(Get.arguments)),
  GetPage(
    name: '/home',
    binding: LayoutBinding(),
    page: () {
      return const MainScreen(
        title: "",
      );
    },
  ),
  GetPage(
    name: '/tour',
    binding: LayoutBinding(),
    page: () {
      return const TourPage();
    },
  ),
];
