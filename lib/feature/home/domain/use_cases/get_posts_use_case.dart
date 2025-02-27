import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/home/data/models/post_models.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/repositories/post_repositories.dart';

class GetPostsUseCase {
  final PostRepository repository;

  GetPostsUseCase(this.repository);

  Future<Either<Failure, List<PostModel>>> call() async {
    return repository.getPosts();
  }
}
