// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:kyn/extensions/text.extension.dart';
// import 'package:kyn/modules/auth/widgets/no_internet.widget.dart';
// import 'package:kyn/modules/core/constants/home.constant.dart';
// import 'package:kyn/modules/core/controllers/system.controller.dart';
// import 'package:kyn/modules/core/services/internet.service.dart';
// import 'package:kyn/modules/core/services/version.service.dart';
// import 'package:kyn/modules/home/controllers/home.controller.dart';
// import 'package:kyn/modules/home/screens/home.screen.dart';
// import 'package:kyn/modules/layout/screens/dashboard.screen.dart';
// import 'package:kyn/modules/layout/widgets/header.widget.dart';
// import 'package:kyn/modules/layout/controller/layout.controller.dart';
// import 'package:kyn/extensions/color.extension.dart';
// import 'package:kyn/modules/core/widgets/blur_widget.dart';
// import 'package:kyn/modules/profile/controllers/user.controller.dart';
// import 'package:kyn/modules/videos/controllers/shorts.controller.dart';
// import 'package:kyn/modules/videos/controllers/shorts_player.controller.dart';
// import 'package:kyn/modules/videos/screens/shorts.screen.dart';
// import 'package:kyn/modules/videos/screens/telecast.screen.dart';
// import 'package:kyn/utils/app.utils.dart';
// import 'package:kyn/utils/dialog.utils.dart';
// import 'package:kyn/utils/system.utils.dart';

// class LayoutScreen extends StatefulWidget {
//   const LayoutScreen({this.id = '', super.key});
//   final String id;

//   @override
//   LayoutScreenState createState() => LayoutScreenState();
// }

// class LayoutScreenState extends State<LayoutScreen> {
//   int klipIndex = 0;
//   bool homeTap = false;
//   bool homeDoubleTap = false;
//   late List<BottomNavigationBarItem> navBarItems;

//   late VersionService versionService;
//   late InternetService internetService;

//   late HomeController homeController;
//   late LayoutController layoutController;
//   late ShortsController shortsController;
//   late SystemController systemController;
//   late UserController userController;

//   @override
//   void initState() {
//     internetService = Get.find<InternetService>();
//     versionService = Get.find<VersionService>();
//     homeController = Get.find<HomeController>();
//     layoutController = Get.find<LayoutController>();
//     shortsController = Get.find<ShortsController>();
//     systemController = Get.find<SystemController>();
//     userController = Get.find<UserController>();
//     userController.updateYoutubeLive();
//     init();
//     super.initState();
//   }

//   void init() {
//     internetService.listen();
//     if (widget.id.isEmpty) versionService.checkUpdate();
//     shortsController.shuffleShortsById(widget.id);
//     navBarItems = getNavBarItem(tabs);
//     if (widget.id.isNotEmpty) {
//       Future.delayed(Duration.zero, () {
//         setState(() {
//           layoutController.changeTabIndex(4);
//         });
//       });
//     }
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     internetService.unlisten();
//   }

//   Future<void> changeTab(int index) async {
//     if (index == 2) {
//       if (internetService.isConnected.value) {
//         showCreateContentModal();
//       } else {
//         await internetService.noInternetDialog(context);
//       }
//     } else if (layoutController.tabIndex.value == 4 && index == 4) {
//       ShortsPlayerController shortsPlayerController =
//           Get.find<ShortsPlayerController>();
//       shortsPlayerController.scrollToTop();
//     } else {
//       if (index == 0 && layoutController.tabIndex.value == 0) {
//         layoutController.onTab.value =
//             layoutController.onTab.value == 1 ? 0 : 1;
//       }
//       setState(() {
//         layoutController.changeTabIndex(index);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     double expandHeight = MediaQuery.of(context).size.height * 0.085;
//     return WillPopScope(
//       onWillPop: () async {
//         if (layoutController.tabIndex.value != 0) {
//           setState(() {
//             layoutController.changeTabIndex(0);
//           });
//           return false;
//         }
//         exitApp();
//         return true;
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           systemOverlayStyle: SystemUiOverlayStyle.dark,
//           elevation: 0.0,
//           automaticallyImplyLeading: false,
//           toolbarHeight: 0,
//           backgroundColor: Theme.of(context).defaultColor,
//         ),
//         bottomNavigationBar: Obx(
//           () => SizedBox(
//             height: internetService.isConnected.value ? 62 : 138,
//             child: Column(
//               children: [
//                 const NoInternetWidget(),
//                 BlurWidget(
//                   borderRadius: 0,
//                   child: BottomNavigationBar(
//                     showUnselectedLabels: true,
//                     showSelectedLabels: true,
//                     backgroundColor:
//                         layoutController.makeNavbarTransparent.value
//                             ? Colors.black87
//                             : null,
//                     onTap: changeTab,
//                     currentIndex: layoutController.tabIndex.value,
//                     unselectedItemColor:
//                         layoutController.makeNavbarTransparent.value
//                             ? Colors.white
//                             : Theme.of(context).primaryBlack,
//                     selectedItemColor: Theme.of(context).primaryRed,
//                     type: BottomNavigationBarType.fixed,
//                     items: navBarItems,
//                     selectedLabelStyle: CustomText.sansFontBody(context),
//                     unselectedLabelStyle: CustomText.sansFontBody(context),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         body: NestedScrollView(
//           physics: const ScrollPhysics(parent: PageScrollPhysics()),
//           floatHeaderSlivers: true,
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               if (layoutController.showHeader.value)
//                 SliverAppBar(
//                   automaticallyImplyLeading: false,
//                   collapsedHeight: expandHeight,
//                   backgroundColor: Colors.white,
//                   flexibleSpace: HeaderWidget(changeTab: changeTab),
//                   floating: true,
//                   pinned: layoutController.tabIndex.value == 0 ? true : false,
//                 ),
//             ];
//           },
//           body: IndexedStack(
//             index: layoutController.tabIndex.value,
//             children: [
//               HomeScreen(
//                 changeTab: changeTab,
//                 onTapKlips: (int index) {
//                   setState(() {
//                     klipIndex = 0;
//                     changeTab(5);
//                   });
//                 },
//               ),
//               const DashboardScreen(),
//               emptyWidget(),
//               const TelecastScreen(),
//               if (layoutController.tabIndex.value == 4)
//                 ShortsScreen(initialIndex: klipIndex),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List<BottomNavigationBarItem> getNavBarItem(
//     List<dynamic> navItem,
//   ) {
//     return navItem
//         .map((dynamic tab) => BottomNavigationBarItem(
//               icon: GestureDetector(
//                 onDoubleTap: () {
//                   if (tab['label'] == 'Home') {
//                     layoutController.onTab.value = 2;
//                   }
//                 },
//                 child: Container(
//                     height: 30,
//                     padding: const EdgeInsets.only(bottom: 3),
//                     child: Icon(
//                       tab['icon'],
//                       size: tab['label'] == 'Create' ? 42 : 24,
//                     )),
//               ),
//               label: tab['label'] == 'Create' ? '' : tab['label'],
//             ))
//         .toList();
//   }
// }
