import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:simple_get_api_task_wc/core/component/custom_app_bar.dart';
import 'package:simple_get_api_task_wc/core/component/custom_text.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_icons.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_string.dart';
import 'package:simple_get_api_task_wc/core/routes/app_routes_name.dart';
import 'package:simple_get_api_task_wc/core/utils/functional_component.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/cubit/comment_cubit.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/cubit/comment_state.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/widget/comment_info_widget.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          text: AppString.commentData,
          onPressed: () {
            Get.offAllNamed(AppRoutesName.homeScreen);
          },
          icons: AppIcons.notesIcon,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CommentCubit, CommentState>(
              builder: (context, state) {
                if (state is CommentLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is CommentLoadedState) {
                  return CommentInfoWidget(
                    state: state,
                  );
                } else if (state is CommentErrorState) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    FunctionalComponent.showSnakabar(AppString.error, state.errorMessage);
                  });
                  return const Center(child: Text(AppString.aeo));
                }
                return const CustomText(text: AppString.error);
              },
            ),
          ],
        ));
  }
}
