import 'package:simple_get_api_task_wc/feature/home/domain/entities/post.dart';

class PostModel extends Post {
  int? id;
  String? title;
  String? body;
  int? userId;

  PostModel({super.id, super.body, super.title, super.userId});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    userId = json['userId'];
  }
}
