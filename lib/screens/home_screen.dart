import 'package:flutter/material.dart';

import '../widgtets/bottom_container_widget.dart';
import '../widgtets/custom_search_bar.dart';
import '../widgtets/home_carousel_slider.dart';
import '../widgtets/product_list.dart';
import '../widgtets/profile_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Image.asset(
          'assets/Logo.png',
        ),
        backgroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSearchBar(),
            HomeCarouselSlider(),
            ProductList(),
            ProfileListWidget(),
            BottomContainerWidget(),
          ],
        ),
      ),
    );
  }
}
