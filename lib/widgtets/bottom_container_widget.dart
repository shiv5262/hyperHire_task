import 'package:flutter/material.dart';

class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '베스트 리뷰어 🏆 Top10',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xFF868686),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '회사 소개',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 13,
                ),
              ),
              Text(
                '|',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 10,
                ),
              ),
              Text(
                '인재 채용',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 13,
                ),
              ),
              Text(
                '|',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 10,
                ),
              ),
              Text(
                '기술 블로그',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 13,
                ),
              ),
              Text(
                '|',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 10,
                ),
              ),
              Text(
                '리뷰 저작권',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/bxs_send.png',
                width: 16,
                height: 16,
              ),
              Text(
                'review@logo.com',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF868686),
                  fontSize: 13,
                ),
              ),
              const Spacer(),
              TextButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                        color: Color(0xFF868686),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'KOR',
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF868686),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 20,
                      color: Color(0xFF868686),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            color: Color(0xFF868686),
          ),
          Text(
            '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF868686),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
