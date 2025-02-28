import 'package:simple_get_api_task_wc/feature/comment/data/models/comment_model.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

abstract interface class CommentRemoteRepo {
  Future<List<CommentModel>> getCommentData();
}

class CommentImpRemoteRepo implements CommentRemoteRepo {
  final ApiServices apiServices;

  CommentImpRemoteRepo({required this.apiServices});
  @override
  Future<List<CommentModel>> getCommentData() {
    return apiServices.getComment();
  }
}
