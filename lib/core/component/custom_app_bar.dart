import 'package:flutter/material.dart';
import 'package:simple_get_api_task_wc/core/component/custom_text.dart';
import 'package:simple_get_api_task_wc/core/theme/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final IconData? icons;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.text, this.icons, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.appbarBGColor,
      title: CustomText(
        text: text,
        colors: AppColor.black,
      ),
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icons,
            color: AppColor.black,
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(240, 50);
}
