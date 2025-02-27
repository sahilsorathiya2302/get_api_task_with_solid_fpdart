import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/models/comment_model.dart';

abstract class CommentRepositories {
  Future<Either<Failure, List<CommentModel>>> getComment();
}
