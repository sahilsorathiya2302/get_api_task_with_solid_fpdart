import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/core/usecase/use_case.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/entities/comment.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/repositories/comment_repositories.dart';

class CommentUseCases implements UseCase<List<Comment>, NoParams> {
  final CommentRepositories repositories;

  CommentUseCases(this.repositories);

  @override
  Future<Either<Failure, List<Comment>>> call(NoParams params) async {
    return repositories.getComment();
  }
}
