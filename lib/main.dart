import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenlock/assets/theme.dart';
import 'package:zenlock/configs/routes.dart';

void main() {
  runApp(const ZenApp());
}

class ZenApp extends StatelessWidget {
  const ZenApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Debug
      debugShowCheckedModeBanner: false,
      //Theme
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme(context),
      //Route
      initialRoute: '',
      getPages: routesPages,
    );
  }
}
