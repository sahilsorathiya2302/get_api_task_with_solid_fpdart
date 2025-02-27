import 'package:flutter/material.dart';
import 'package:simple_get_api_task_wc/core/theme/app_color.dart';

class CustomText extends StatelessWidget {
  final Color? colors;
  final String text;
  const CustomText({super.key, required this.text, this.colors});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: colors ?? AppColor.black, fontWeight: FontWeight.w700),
    );
  }
}
