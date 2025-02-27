import 'package:get/get.dart';
import 'package:simple_get_api_task_wc/core/routes/app_routes_name.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/comment_screen.dart';
import 'package:simple_get_api_task_wc/feature/home/presentation/home_screen.dart';

class AppRoutesPages {
  AppRoutesPages._();

  static List<GetPage> pages = [
    GetPage(
      name: AppRoutesName.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutesName.commentScreen,
      page: () => const CommentScreen(),
    )
  ];
}
