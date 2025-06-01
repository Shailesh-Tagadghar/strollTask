import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:strolltask/Utils/Constants/color_constant.dart';
import 'package:strolltask/Utils/Widgets/text_widget.dart';

class PollOptionButton extends StatelessWidget {
  final String label;
  final String leadingChar;
  final Color borderColor;
  final Color boxBorderColor;
  final Color backgroundColor;
  final Color leadingCharColor;


  const PollOptionButton({
    super.key,
    required this.label,
    required this.leadingChar,
    required this.borderColor,
    this.leadingCharColor = const Color(0xFF8B88EF),
     this.boxBorderColor = const Color(0xFF232A2E),
     this.backgroundColor = const Color(0xFF1C1C1E),

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.5.h),
      decoration: BoxDecoration(
        border: Border.all(
          color: boxBorderColor,
          width: 2,
        ),
        color: ColorConstant.boxColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black.withOpacity(0.3),
            blurRadius: 2,
            offset: const Offset(-1, -1),
          ),
          BoxShadow(
            color: ColorConstant.shadowColor4,
            blurRadius: 2,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: ColorConstant.boxColor,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
                border: Border.all(
                  color: borderColor,
                  width: 1,
                ),
              ),
              child: Center(
                child: TextWidget(
                  leadingChar,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w400,
                  color: leadingCharColor,
                ),
              ),
            ),
          ),
          SizedBox(width: 1.5.w),
          SizedBox(
            width: 30.w,
            child: TextWidget(
              label,
              color: ColorConstant.optionColor,
              fontSize: 15.5,
              fontWeight: FontWeight.w400,
              maxLine: 2,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
