import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      child: Container(
        height: 40,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.8,
            ],
            colors: [
              Color(0xFF3C41BF),
              Color(0xFF74FBDE),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              cursorColor: Colors.black,
              style: textTheme.bodyMedium,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: '검색어를 입력하세요',
                hintStyle: textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFF868686),
                ),
                fillColor: Colors.white,
                suffixIcon: Image.asset(
                  'assets/Icon_Search.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
