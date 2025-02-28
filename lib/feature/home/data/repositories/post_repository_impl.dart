import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_string.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/home/data/repositories/post_remote_repo.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/entities/post.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/repositories/post_repositories.dart';

class PostRepositoryImpl implements PostRepository {
  final PostImpRemoteRepo postImpRemoteRepo;

  PostRepositoryImpl({required this.postImpRemoteRepo});

  @override
  Future<Either<Failure, List<Post>>> getPosts() async {
    try {
      final postModels = await postImpRemoteRepo.getPostData();
      return right(postModels);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(Failure(message: AppString.internetError));
      } else {
        return left(Failure(message: e.toString()));
      }
    }
  }
}
