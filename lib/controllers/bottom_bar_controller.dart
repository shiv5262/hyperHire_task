import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hyper_hire_assignment/models/bottom_bar_item_model.dart';
import 'package:hyper_hire_assignment/screens/home_screen.dart';

class BottomBarController extends GetxController {
  int currentPageIndex = 0;

  final screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  List<BottomBarItemModel> bottomBarItems = [
    BottomBarItemModel(
      icon: Image.asset('assets/images/bottom bar icons/1.png'),
      name: '홈',
    ),
    BottomBarItemModel(
      icon: Image.asset('assets/images/bottom bar icons/2.png'),
      name: '카테고리',
    ),
    BottomBarItemModel(
      icon: Image.asset('assets/images/bottom bar icons/3.png'),
      name: '커뮤니티',
    ),
    BottomBarItemModel(
      icon: Image.asset('assets/images/bottom bar icons/4.png'),
      name: '마이페이지',
    ),
  ];
}
