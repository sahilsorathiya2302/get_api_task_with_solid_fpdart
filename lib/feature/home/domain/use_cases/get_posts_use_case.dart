import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/core/usecase/use_case.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/entities/post.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/repositories/post_repositories.dart';


///PostRepositoryImpl not used direct
class GetPostsUseCase implements UseCase<List<Post>, NoParams> {
  final PostRepository repository;

  GetPostsUseCase(this.repository);

  @override
  Future<Either<Failure, List<Post>>> call(NoParams params) async {
    return repository.getPosts();
  }
}
