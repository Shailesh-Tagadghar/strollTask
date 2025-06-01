import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final List<Shadow>? shadows;

  const TextWidget(
    this.text, {
    super.key,
    this.color,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        shadows: shadows,
      ),
    );
  }
}
