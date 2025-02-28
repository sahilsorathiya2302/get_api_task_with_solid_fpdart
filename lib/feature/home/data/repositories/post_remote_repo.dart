import 'package:simple_get_api_task_wc/feature/home/domain/entities/post.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

abstract interface class PostRemoteRepo {
  Future<List<Post>> getPostData();
}

class PostImpRemoteRepo extends PostRemoteRepo {
  final ApiServices apiServices;

  PostImpRemoteRepo({required this.apiServices});
  @override
  Future<List<Post>> getPostData() {
    return apiServices.getData();
  }
}
