import 'package:simple_get_api_task_wc/feature/comment/domain/entities/comment.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

abstract interface class CommentRemoteRepo {
  Future<List<Comment>> getCommentData();
}

class CommentImpRemoteRepo implements CommentRemoteRepo {
  final ApiServices apiServices;

  CommentImpRemoteRepo({required this.apiServices});
  @override
  Future<List<Comment>> getCommentData() {
    return apiServices.getComment();
  }
}
