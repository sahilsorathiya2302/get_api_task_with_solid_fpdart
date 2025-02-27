import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:simple_get_api_task_wc/core/failure/failure.dart';
import 'package:simple_get_api_task_wc/feature/home/data/models/post_models.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/repositories/post_repositories.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

class PostRepositoryImpl implements PostRepository {
  final ApiServices apiServices;

  PostRepositoryImpl({required this.apiServices});

  @override
  Future<Either<Failure, List<PostModel>>> getPosts() async {
    try {
      final postModels = await apiServices.getData();
      return right(postModels);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(Failure(message: "Internet Off Please On Internet......"));
      } else {
        return left(Failure(message: e.toString()));
      }
    }
  }
}
