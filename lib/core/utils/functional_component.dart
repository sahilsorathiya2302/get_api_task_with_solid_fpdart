import 'package:get/get.dart';
import 'package:simple_get_api_task_wc/core/theme/app_color.dart';

class FunctionalComponent {
  static showSnakabar(String title, String message) {
    Get.snackbar(title, message, backgroundColor: AppColor.black, colorText: AppColor.white);
  }
}
