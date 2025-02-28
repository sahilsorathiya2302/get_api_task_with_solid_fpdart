import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/entities/post.dart';

abstract class PostRepository {
  Future<Either<Failure, List<Post>>> getPosts();
}
