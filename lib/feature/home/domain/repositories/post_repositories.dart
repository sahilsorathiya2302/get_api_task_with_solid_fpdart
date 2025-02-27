import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/home/data/models/post_models.dart';

abstract class PostRepository {
  Future<Either<Failure, List<PostModel>>> getPosts();
}
