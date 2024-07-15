import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hyper_hire_assignment/controllers/bottom_bar_controller.dart';

import '../controllers/home_controller.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.put(BottomBarController());
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Builder(
        builder: (context) {
          return GetBuilder<BottomBarController>(
            builder: (controller) {
              return controller.screens[controller.currentPageIndex];
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        constraints: const BoxConstraints(minHeight: 40, maxHeight: 70),
        // height: MediaQuery.of(context).size.shortestSide * 0.17,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(
              15,
            ),
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 10),
          ],
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(
              15,
            ),
          ),
          child: GetBuilder<BottomBarController>(
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Column(
                      children: [
                        controller.bottomBarItems[0].icon,
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            controller.bottomBarItems[0].name,
                            style: textTheme.bodySmall?.copyWith(
                              color: controller.currentPageIndex == 0
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        controller.bottomBarItems[1].icon,
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            controller.bottomBarItems[1].name,
                            style: textTheme.bodySmall?.copyWith(
                              color: controller.currentPageIndex == 1
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        controller.bottomBarItems[2].icon,
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            controller.bottomBarItems[2].name,
                            style: textTheme.bodySmall?.copyWith(
                              color: controller.currentPageIndex == 2
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      children: [
                        controller.bottomBarItems[3].icon,
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Text(
                            controller.bottomBarItems[3].name,
                            style: textTheme.bodySmall?.copyWith(
                              color: controller.currentPageIndex == 3
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
