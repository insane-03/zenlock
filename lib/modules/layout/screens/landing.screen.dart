import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    init();
  }

  Future<void> init() async {
    if (Get.currentRoute == '') {
      Future.delayed(
          const Duration(seconds: 5), () => Get.offAndToNamed('/tour'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/logo.gif"))),
      ),
    );
  }
}
