import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'animated_dot.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    var controller = Get.find<HomeController>();
    return Stack(
      children: [
        Container(
          constraints: const BoxConstraints(
            minHeight: 200,
            maxHeight: 350,
          ),
          width: double.infinity,
          child: CarouselSlider(
            items: controller.carouselImageList
                .map(
                  (image) => Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  controller.getCarouselIndex(index),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Positioned(
          bottom: 1,
          left: mediaQuery.width * 0.42,
          child: GetBuilder<HomeController>(
            builder: (controller) {
              return Row(
                children: List.generate(
                  controller.carouselImageList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                      right: 6,
                      bottom: 10,
                    ),
                    child: AnimatedDot(
                      isActive: controller.currentCarouselIndex == index,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
