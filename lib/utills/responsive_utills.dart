import 'package:flutter/material.dart';

class ResponsiveUtils {
  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static bool isMobile(BuildContext context) {
    return getScreenWidth(context) < 600;
  }

  static bool isTablet(BuildContext context) {
    return getScreenWidth(context) >= 600 && getScreenWidth(context) < 1200;
  }

  static bool isDesktop(BuildContext context) {
    return getScreenWidth(context) >= 1200;
  }

  static String getLayoutType(BuildContext context) {
    if (isMobile(context)) {
      return 'Mobile';
    } else if (isTablet(context)) {
      return 'Tablet';
    } else {
      return 'Desktop';
    }
  }

  static double adaptiveTextSize(BuildContext context, double baseFontSize) {
    double width = getScreenWidth(context);

    if (width < 600) {
      return baseFontSize;
    } else if (width < 1200) {
      return baseFontSize * 1.2;
    } else {
      return baseFontSize * 1.5;
    }
  }

  static EdgeInsets adaptivePadding(BuildContext context) {
    double width = getScreenWidth(context);
    if (width < 600) {
      return EdgeInsets.all(8);
    } else if (width < 1200) {
      return EdgeInsets.all(16);
    } else {
      return EdgeInsets.all(24);
    }
  }

  static TextStyle adaptiveTextStyle(BuildContext context,
      {required double fontSize, Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: adaptiveTextSize(context, fontSize),
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
