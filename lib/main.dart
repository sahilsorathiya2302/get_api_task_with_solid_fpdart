import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:simple_get_api_task_wc/core/routes/app_routes_pages.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/cubit/comment_cubit.dart';
import 'package:simple_get_api_task_wc/feature/home/presentation/cubit/post_cubit.dart';
import 'package:simple_get_api_task_wc/services/injection.dart';

void main() {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostCubit>(
          create: (context) => PostCubit(getIt()),
        ),
        BlocProvider<CommentCubit>(
          create: (context) => CommentCubit(getIt()),
        ),
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/",
        getPages: AppRoutesPages.pages,
      ),
    );
  }
}
