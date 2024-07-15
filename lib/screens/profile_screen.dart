import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/utils/responsive_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              '랭킹 1위',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF868686),
                fontSize: 10,
              ),
            ),
            Text(
              '베스트 리뷰어',
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF1D1D1D),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopProfileContainer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '작성한 리뷰',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff000000),
                            fontSize: ResponsiveText()
                                .changeFontSize(context: context, size: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '총 35개',
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff616161),
                            fontSize: ResponsiveText()
                                .changeFontSize(context: context, size: 12),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          style: ButtonStyle(
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
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
                                '최신순',
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF868686),
                                  fontSize: ResponsiveText().changeFontSize(
                                      context: context, size: 13),
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
                  ),
                  const Divider(
                    color: Color(0xFF868686),
                    thickness: 0.5,
                  ),
                  Container(
                    height: mediaQuery.shortestSide * 0.3,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            constraints: const BoxConstraints(
                              minWidth: 100,
                              minHeight: 100,
                              maxHeight: 200,
                              maxWidth: 200,
                            ),
                            width: mediaQuery.width * 0.25,
                            height: mediaQuery.width * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                4,
                              ),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xFFCECECE),
                              ),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/utils/ryzen.png'),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Text(
                                    'AMD 라이젠 5 5600X 버미어 정품 멀티팩',
                                    style: textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: ResponsiveText().changeFontSize(
                                          context: context, size: 14),
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFFFD233),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFFFD233),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFFFD233),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFFFD233),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xFFF0F0F0),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Text(
                                            '4.07',
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                textTheme.bodySmall?.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: ResponsiveText()
                                                  .changeFontSize(
                                                      context: context,
                                                      size: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color(0xFF868686),
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset(
                            'assets/images/profile images/profile.png',
                            width: mediaQuery.shortestSide * 0.1,
                            height: mediaQuery.shortestSide * 0.1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name01',
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff000000),
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD233),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD233),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD233),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD233),
                                    size: 18,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFF0F0F0),
                                    size: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0,
                                    ),
                                    child: Text(
                                      '4.07',
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.bodySmall?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.bookmark_border,
                          color: Color(0xFF868686),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    height: mediaQuery.height * 0.05,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '“가격 저렴해요”',
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: ResponsiveText()
                                  .changeFontSize(context: context, size: 14),
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '“CPU온도 고온”',
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: ResponsiveText()
                                  .changeFontSize(context: context, size: 14),
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '“서멀작업 가능해요”',
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: ResponsiveText()
                                  .changeFontSize(context: context, size: 14),
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '“게임 잘 돌아가요”',
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: ResponsiveText()
                                  .changeFontSize(context: context, size: 14),
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: mediaQuery.width * 0.9,
                    height: mediaQuery.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/utils/dash_blue.png'),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: ResponsiveText()
                                    .changeFontSize(context: context, size: 14),
                                color: const Color(0xFFA0A0A0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: mediaQuery.width * 0.9,
                    height: mediaQuery.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/utils/dash.png'),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: ResponsiveText()
                                    .changeFontSize(context: context, size: 14),
                                color: const Color(0xFFA0A0A0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: mediaQuery.width * 0.15),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, bottom: 10),
                          child: Image.asset(
                            'assets/images/utils/util-1.png',
                            width: mediaQuery.shortestSide * 0.25,
                            height: mediaQuery.shortestSide * 0.25,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, bottom: 10),
                          child: Image.asset(
                            'assets/images/utils/util-2.png',
                            width: mediaQuery.shortestSide * 0.25,
                            height: mediaQuery.shortestSide * 0.25,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, bottom: 10),
                          child: Image.asset(
                            'assets/images/utils/util-3.png',
                            width: mediaQuery.shortestSide * 0.25,
                            height: mediaQuery.shortestSide * 0.25,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color(0xFF868686),
                      thickness: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/images/utils/chat_bubble.png'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '댓글 달기..',
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: const Color(0xFFA0A0A0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopProfileContainer extends StatelessWidget {
  const TopProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.3,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: mediaQuery.height * 0.1,
            width: mediaQuery.height * 0.1,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile images/profile.png'),
              ),
            ),
          ),
          Text(
            'Name01',
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1D1D1D),
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/utils/crown.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                  ),
                  child: Text(
                    '골드',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFD233),
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              '조립컴 업체를 운영하며 리뷰를 작성합니다.',
              style: textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: const Color(0xFF868686),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
