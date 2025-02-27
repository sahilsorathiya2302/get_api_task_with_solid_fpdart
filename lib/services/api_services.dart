import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:simple_get_api_task_wc/core/constraints/app_api_string.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/models/comment_model.dart';
import '../feature/home/data/models/post_models.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: AppApiString.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio) {
    dio.options = BaseOptions(
        baseUrl: AppApiString.baseUrl,
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: AppApiString.contentType,
        connectTimeout: const Duration(seconds: 30));

    dio.interceptors.add(PrettyDioLogger(
        responseBody: true, requestBody: true, responseHeader: true, requestHeader: true));

    return _ApiServices(dio);
  }

  @GET("/posts")
  Future<List<PostModel>> getData();

  @GET("/comments")
  Future<List<CommentModel>> getComment();
}
