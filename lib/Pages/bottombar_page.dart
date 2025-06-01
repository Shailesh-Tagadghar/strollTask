import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:strolltask/Utils/Constants/color_constant.dart';

class BottombarPage extends StatelessWidget {
  final int selectedIndex;
  final int notificationCount;

  const BottombarPage({
    super.key,
    required this.selectedIndex,
    this.notificationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.style,
      Icons.local_fire_department,
      Icons.chat_bubble_outline,
      Icons.person_outline,
    ];

    return Container(
      height: 9.h,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: ColorConstant.bottomAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          final isSelected = index == selectedIndex;
          return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icons[index],
                    color: isSelected ? Color(0xFFB49CFF) : Colors.grey,
                    size: 28,
                  ),
                  if (isSelected) const SizedBox(height: 4),
                  if (isSelected)
                    const CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFFB49CFF),
                    ),
                ],
              ),
              if (index == 2 && notificationCount > 0)
                Positioned(
                  top: -4,
                  right: -10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                      color: Color(0xFFB49CFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '$notificationCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          );
        }),
      ),
    );
  }
}
