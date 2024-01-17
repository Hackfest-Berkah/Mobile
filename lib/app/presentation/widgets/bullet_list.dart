import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulletList extends StatelessWidget {
  final TextStyle? textStyle;
  final List<String> strings;

  const BulletList({
    super.key,
    required this.strings,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: textStyle?.copyWith(
                  height: 1.1,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Flexible(
                child: Text(
                  str,
                  style: textStyle,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
