import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/core/usecase/use_case.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/models/comment_model.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/repositories/comment_repositories.dart';

class CommentUseCases implements UseCase<List<CommentModel>, NoParams> {
  final CommentRepositories repositories;

  CommentUseCases(this.repositories);

  Future<Either<Failure, List<CommentModel>>> call(NoParams params) async {
    return repositories.getComment();
  }
}
