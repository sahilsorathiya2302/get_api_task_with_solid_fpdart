import 'package:flutter/material.dart';
import 'package:simple_get_api_task_wc/core/component/custom_text.dart';
import 'package:simple_get_api_task_wc/core/theme/app_color.dart';

class CommentInfoWidget extends StatelessWidget {
  final dynamic state;
  const CommentInfoWidget({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            var commentData = state.comment[index];
            return ListTile(
              leading: CustomText(
                text: commentData.id.toString(),
              ),
              title: CustomText(
                text: commentData.name.toString(),
              ),
              subtitle: CustomText(
                text: commentData.email.toString(),
                fontWeight: FontWeight.w500,
                colors: AppColor.gray,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: state.comment.length),
    );
  }
}
