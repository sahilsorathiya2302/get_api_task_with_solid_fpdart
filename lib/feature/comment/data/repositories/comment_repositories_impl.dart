import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_string.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/repositories/comment_remote_repo.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/entities/comment.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/repositories/comment_repositories.dart';

class CommentRepositoriesImpl extends CommentRepositories {
  final CommentImpRemoteRepo commentImpRemoteRepo;

  CommentRepositoriesImpl({required this.commentImpRemoteRepo});

  @override
  Future<Either<Failure, List<Comment>>> getComment() async {
    try {
      final commentModels = await commentImpRemoteRepo.getCommentData();
      return right(commentModels);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(Failure(message: AppString.internetError));
      } else {
        return left(Failure(message: e.toString()));
      }
    }
  }
}
