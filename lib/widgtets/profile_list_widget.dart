import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../screens/profile_screen.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var homeController = Get.find<HomeController>();

    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        bottom: 20,
      ),
      color: const Color(0xFFFFFFFF),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '골드 계급 사용자들이예요',
              style: textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            '베스트 리뷰어 🏆 Top10',
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: homeController.profileList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 62,
                            width: 62,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage(
                                  homeController.profileList[index].imageUrl,
                                ),
                              ),
                            ),
                            child: Image.asset(
                              homeController.profileList[index].imageUrl,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          if (index == 0)
                            Image.asset('assets/images/utils/crown.png'),
                        ],
                      ),
                      Text(homeController.profileList[index].name),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
