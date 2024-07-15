import 'package:flutter/material.dart';
import 'package:hyper_hire_assignment/utils/responsive_widget.dart';

class ResponsiveText {
  double changeFontSize({
    required BuildContext context,
    required double size,
  }) {
    if (Responsive.isMobile(context)) {
      return size;
    } else if (Responsive.isMobileLarge(context)) {
      return size + 2;
    } else if (Responsive.isTablet(context)) {
      return size + 6;
    } else {
      return size + 8;
    }
  }
}
