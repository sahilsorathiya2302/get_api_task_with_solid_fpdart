import 'package:flutter/material.dart';
import 'package:simple_get_api_task_wc/core/component/custom_text.dart';

class InformationShowWidget extends StatefulWidget {
  final dynamic state;
  const InformationShowWidget({super.key, this.state});

  @override
  State<InformationShowWidget> createState() => _InformationShowWidgetState();
}

class _InformationShowWidgetState extends State<InformationShowWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            var posts = widget.state.post[index];
            return ListTile(
              leading: CustomText(
                text: posts.id.toString(),
              ),
              title: CustomText(
                text: posts.title.toString(),
              ),
              subtitle: CustomText(
                text: posts.body.toString(),
                fontWeight: FontWeight.w400,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: widget.state.post.length),
    );
  }
}
