import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/utils/responsive_text.dart';

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({
    super.key,
    required this.titleText,
    required this.detailText1,
    required this.detailText2,
    required this.rating,
    required this.ratingCount,
    required this.tagText1,
    required this.tagText2,
    required this.productImage,
    required this.crownImage,
  });

  final String titleText,
      detailText1,
      detailText2,
      rating,
      ratingCount,
      tagText1,
      tagText2,
      productImage,
      crownImage;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context).size;
    final responsiveText = ResponsiveText();

    double titleSize =
        responsiveText.changeFontSize(context: context, size: 14);

    double subTitleSize =
        responsiveText.changeFontSize(context: context, size: 12);

    double smallTextSize =
        responsiveText.changeFontSize(context: context, size: 10);

    return Container(
      constraints: const BoxConstraints(minHeight: 100, maxHeight: 200),
      height: mediaQuery.shortestSide * 0.3,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              width: mediaQuery.shortestSide * 0.25,
              height: mediaQuery.shortestSide * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  4,
                ),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFCECECE),
                ),
                image: DecorationImage(
                  image: AssetImage(productImage),
                ),
              ),
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  crownImage,
                  fit: BoxFit.fitHeight,
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
                    flex: 2,
                    child: Text(
                      titleText,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: titleSize,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        children: [
                          const Text('• '),
                          Expanded(
                            child: Text(
                              detailText1,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: subTitleSize,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        children: [
                          const Text('• '),
                          Expanded(
                            child: Text(
                              detailText2,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: subTitleSize,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xFFFFD233),
                            size: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 3),
                            child: Text(
                              rating,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: smallTextSize,
                                color: const Color(0xFFFFD233),
                              ),
                            ),
                          ),
                          Text(
                            '($ratingCount)',
                            style: textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: smallTextSize,
                              color: const Color(0xFFC4C4C4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              tagText1,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: smallTextSize,
                                color: const Color(0xFF868686),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              tagText2,
                              style: textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: smallTextSize,
                                color: const Color(0xFF868686),
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
    );
  }
}
