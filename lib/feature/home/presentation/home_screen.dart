import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:simple_get_api_task_wc/core/component/custom_app_bar.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_icons.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_string.dart';
import 'package:simple_get_api_task_wc/core/routes/app_routes_name.dart';
import 'package:simple_get_api_task_wc/core/utils/functional_component.dart';
import 'package:simple_get_api_task_wc/feature/home/presentation/cubit/post_cubit.dart';
import 'package:simple_get_api_task_wc/feature/home/presentation/widget/information_show_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: AppString.postData,
        icons: AppIcons.commentIcon,
        onPressed: () {
          Get.offAllNamed(AppRoutesName.commentScreen);
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<PostCubit, PostState>(
            builder: (context, state) {
              if (state is PostsLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PostsLoadedState) {
                return InformationShowWidget(
                  state: state,
                );
              } else if (state is PostsErrorState) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  FunctionalComponent.showSnakabar(AppString.error, state.errorMessage);
                });
                return const Center(child: Text(AppString.aeo));
              }
              return const Center(child: Text(AppString.ndf));
            },
          )
        ],
      ),
    );
  }
}
