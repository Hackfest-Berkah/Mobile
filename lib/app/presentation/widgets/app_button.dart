import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiri/styles/color_constants.dart';
import 'package:kiri/styles/text_styles.dart';

enum AppButtonType {
  contained,
  outlined;
}

enum AppButtonVariant {
  primary,
  secondary,
}

class AppButton extends StatelessWidget {
  final AppButtonType type;
  final void Function()? onPressed;
  final String text;
  final AppButtonVariant variant;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;

  const AppButton({
    super.key,
    this.type = AppButtonType.contained,
    required this.onPressed,
    required this.text,
    this.variant = AppButtonVariant.primary,
    this.padding,
    this.borderRadius,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    if (type == AppButtonType.outlined) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.primary[500]!,
            width: 1.5.w,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(10.w),
        ),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: padding ??
                EdgeInsets.symmetric(
                  vertical: 13.h,
                  horizontal: 24,
                ),
            shadowColor: Colors.transparent,
            elevation: 0,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            text,
            style: textStyle ??
                h4BTextStyle(
                  color: ColorConstants.primary[500],
                ),
          ),
        ),
      );
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      decoration: BoxDecoration(
        color: onPressed == null
            ? ColorConstants.slate[300]
            : variant == AppButtonVariant.primary
                ? ColorConstants.primary[500]
                : ColorConstants.error,
        borderRadius: borderRadius ?? BorderRadius.circular(10.w),
      ),
      clipBehavior: Clip.hardEdge,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: padding ??
              EdgeInsets.symmetric(
                vertical: 13.h,
                horizontal: 24,
              ),
          shadowColor: Colors.transparent,
          elevation: 0,
          visualDensity: padding != null ? VisualDensity.compact : null,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          text,
          style: textStyle ?? h4BTextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
