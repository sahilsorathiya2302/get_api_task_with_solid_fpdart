import 'package:flutter/material.dart';

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
              leading: Text(posts.id.toString()),
              title: Text(posts.title.toString()),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: widget.state.post.length),
    );
  }
}
