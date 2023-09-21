// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kyn/modules/videos/controllers/shorts.controller.dart';

// class LayoutController extends GetxController {
//   late List<BottomNavigationBarItem> item;
//   var tabIndex = 0.obs;
//   RxBool showHeader = true.obs;
//   RxBool makeNavbarTransparent = false.obs;
//   RxInt onTab = 0.obs;

//   void changeTabIndex(int index) {
//     tabIndex.value = index;
//     makeNavbarTransparent.value = index == 4;
//     showHeader.value = index != 4;
//     Get.find<ShortsController>().isActive.value = index == 4;
//   }
// }
