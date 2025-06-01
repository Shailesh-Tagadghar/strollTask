import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:strolltask/Utils/Constants/asset_constant.dart';
import 'package:strolltask/Utils/Constants/color_constant.dart';
import 'package:strolltask/Utils/Constants/string_constant.dart';
import 'package:strolltask/Utils/Widgets/poll_option_widget.dart';
import 'package:strolltask/Utils/Widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.blackColor,
      body: Stack(
        children: [
          Image.asset(
            AssetConstant.bgImage,
            width: 100.w,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 6.h),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      StringConstant.bonfireString,
                      color: ColorConstant.bonfireTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.center,
                      shadows: [
                        Shadow(
                          color: ColorConstant.shadowColor1,
                          offset: const Offset(0, 0),
                          blurRadius: 7.9,
                        ),
                        Shadow(
                          color: ColorConstant.shadowColor2,
                          offset: const Offset(0, 0),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 0.2.w,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConstant.dropdownColor,
                      size: 34,
                      shadows: [
                        Shadow(
                          color: ColorConstant.shadowColor3,
                          offset: const Offset(0, 0.3),
                          blurRadius: 0.3,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 0.2.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      color: ColorConstant.whiteColor,
                      size: 18,
                    ),
                    SizedBox(width: 0.4.w),
                    TextWidget(
                      StringConstant.time,
                      color: ColorConstant.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 1.5.w),
                    Icon(
                      Icons.person_2_outlined,
                      color: ColorConstant.whiteColor,
                      size: 18,
                    ),
                    SizedBox(width: 0.4.w),
                    TextWidget(
                      StringConstant.user,
                      color: ColorConstant.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 37.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AssetConstant.userImage,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.h),
                        TextWidget(
                          StringConstant.userName,
                          color: ColorConstant.userNameColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 1.h),
                        SizedBox(
                          width: 60.w,
                          child: TextWidget(
                            StringConstant.question,
                            color: ColorConstant.userNameColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                TextWidget(
                  StringConstant.content,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: ColorConstant.dropdownColor.withOpacity(0.7),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 2.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PollOptionButton(
                      label: StringConstant.option1,
                      leadingChar: 'A',
                      borderColor: ColorConstant.optionColor,
                      leadingCharColor: ColorConstant.optionColor,
                    ),
                    PollOptionButton(
                      label: StringConstant.option2,
                      leadingChar: 'B',
                      borderColor: ColorConstant.optionColor,
                      leadingCharColor: ColorConstant.optionColor,
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PollOptionButton(
                      label: StringConstant.option3,
                      leadingChar: 'C',
                      borderColor: ColorConstant.optionColor,
                      leadingCharColor: ColorConstant.optionColor,
                    ),
                    PollOptionButton(
                      label: StringConstant.option4,
                      leadingChar: 'D',
                      leadingCharColor: ColorConstant.userNameColor,
                      boxBorderColor: ColorConstant.iconColor,
                      backgroundColor: ColorConstant.iconColor,
                      borderColor: ColorConstant.iconColor,
                    ),
                  ],
                ),
                SizedBox(height: 1.5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextWidget(
                        StringConstant.option5,
                        color: ColorConstant.optionTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorConstant.iconColor,
                          width: 2.2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.mic,
                        color: ColorConstant.iconColor,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorConstant.iconColor,
                          width: 2.2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: ColorConstant.iconColor,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
