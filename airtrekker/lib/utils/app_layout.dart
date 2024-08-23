import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight() {
    // Provide a fallback value if Get.height is null
    return Get.context?.height ?? MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;
  }

  static double getScreenWidth() {
    // Provide a fallback value if Get.width is null
    return Get.context?.width ?? MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;
  }

  static double getHeight(double pixels) {
    double screenHeight = getScreenHeight();
    double x = screenHeight / pixels;
    return screenHeight / x;
  }

  static double getWidth(double pixels) {
    double screenWidth = getScreenWidth();
    double x = screenWidth / pixels;
    return screenWidth / x;
  }
}
