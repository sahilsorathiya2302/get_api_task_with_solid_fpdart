import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/models/comment_model.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/repositories/comment_repositories.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

class CommentRepositoriesImpl extends CommentRepositories {
  final ApiServices apiServices;

  CommentRepositoriesImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<CommentModel>>> getComment() async {
    try {
      final commentModels = await apiServices.getComment();
      return right(commentModels);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(Failure(message: "Internet Off Please On Internet......"));
      } else {
        return left(Failure(message: e.toString()));
      }
    }
  }
}
