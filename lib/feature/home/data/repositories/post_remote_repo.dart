import 'package:simple_get_api_task_wc/feature/home/data/models/post_models.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

abstract interface class PostRemoteRepo {
  Future<List<PostModel>> getPostData();
}

class PostImpRemoteRepo extends PostRemoteRepo {
  final ApiServices apiServices;

  PostImpRemoteRepo({required this.apiServices});
  @override
  Future<List<PostModel>> getPostData() {
    return apiServices.getData();
  }
}
