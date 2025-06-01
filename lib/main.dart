import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:strolltask/Utils/Constants/string_constant.dart';
import 'package:strolltask/Pages/home_page.dart';

Future<void> main() async {
  runApp(const StrollApp());
}

class StrollApp extends StatelessWidget {
  const StrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: StringConstant.appName,
          home: const HomePage(),
        );
      },
    );
  }
}
