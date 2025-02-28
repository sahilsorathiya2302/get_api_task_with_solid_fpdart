import 'package:simple_get_api_task_wc/feature/comment/domain/entities/comment.dart';

class CommentModel extends Comment {
  CommentModel({
    super.postId,
    super.id,
    super.name,
    super.email,
    super.body,
  });

  CommentModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postId'] = postId;
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['body'] = body;
    return data;
  }
}
