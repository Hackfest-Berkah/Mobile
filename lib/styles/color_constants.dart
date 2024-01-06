import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorConstants {
  static Map<int, Color> slate = {
    25: Color(0xffF9FAFB),
    50: Color(0xffF0F3F9),
    100: Color(0xffE9EFF6),
    200: Color(0xffD7DFE9),
    300: Color(0xffAFBACA),
    400: Color(0xff8897AE),
    500: Color(0xff5E718D),
    600: Color(0xff455468),
    700: Color(0xff3D4A5C),
    800: Color(0xff2D3643),
    900: Color(0xff1C222B),
  };

  static Map<int, Color> primary = {
    50: Color(0xffE9F1FF),
    100: Color(0xffBAD5FF),
    200: Color(0xff99C0FF),
    300: Color(0xff6AA3FF),
    400: Color(0xff4D91FF),
    500: Color(0xff2176FF),
    600: Color(0xff1E6BE8),
    700: Color(0xff1754B5),
    800: Color(0xff12418C),
    900: Color(0xff0E326B),
  };

  static Map<int, Color> secondary = {
    50: Color(0xffFFFDEB),
    100: Color(0xffFFFABF),
    200: Color(0xffFFF7A1),
    300: Color(0xffFFF476),
    400: Color(0xffFFF15B),
    500: Color(0xffFFEE32),
    600: Color(0xffE8D92E),
    700: Color(0xffB5A924),
    800: Color(0xff8C831C),
    900: Color(0xff6B6415),
  };

  static Map<int, Gradient> gradient = {
    1: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        ColorConstants.primary[500]!,
        ColorConstants.primary[900]!,
      ],
    ),
    2: LinearGradient(
      colors: [
        ColorConstants.primary[500]!,
        ColorConstants.primary[900]!,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(18 * (3.1415926535 / 180)),
      stops: [0.2658, 1.0],
    ),
  };

  static Map<int, BoxShadow> shadow = {
    1: BoxShadow(
      color: Colors.black.withOpacity(.1),
      offset: Offset(0, 0),
      blurRadius: 40.sp,
    ),
    2: BoxShadow(
      color: Colors.black.withOpacity(.1),
      offset: Offset(0, 4),
      blurRadius: 40.sp,
    ),
  };
  static Color error = Color(0xffFF405F);
}

final ColorScheme appColorScheme = ColorScheme(
  primary: ColorConstants.primary[500]!,
  secondary: ColorConstants.slate[500]!,
  background: ColorConstants.slate[25]!,
  surface: ColorConstants.slate[50]!,
  error: Colors.red[400]!,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onBackground: Colors.black,
  onSurface: Colors.black,
  onError: Colors.white,
  brightness: Brightness.light,
);
