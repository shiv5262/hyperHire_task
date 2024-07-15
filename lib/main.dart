import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hyper_hire_assignment/screens/bottom_bar_view.dart';

import 'theme/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const BottomBarView(),
    );
  }
}
