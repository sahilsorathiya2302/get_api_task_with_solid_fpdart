import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/repositories/comment_remote_repo.dart';
import 'package:simple_get_api_task_wc/feature/comment/data/repositories/comment_repositories_impl.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/repositories/comment_repositories.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/use_cases/comment_use_cases.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/cubit/comment_cubit.dart';
import 'package:simple_get_api_task_wc/feature/home/data/repositories/post_remote_repo.dart';
import 'package:simple_get_api_task_wc/feature/home/data/repositories/post_repository_impl.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/repositories/post_repositories.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/use_cases/get_posts_use_case.dart';
import 'package:simple_get_api_task_wc/feature/home/presentation/cubit/post_cubit.dart';
import 'package:simple_get_api_task_wc/services/api_services.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(getIt()));

  getIt.registerLazySingleton(
    () => PostImpRemoteRepo(apiServices: getIt()),
  );
  getIt.registerLazySingleton<PostRepository>(
    () => PostRepositoryImpl(postImpRemoteRepo: getIt()),
  );

  getIt.registerLazySingleton<GetPostsUseCase>(
    () => GetPostsUseCase(getIt()),
  );

  getIt.registerLazySingleton(
    () => CommentImpRemoteRepo(apiServices: getIt()),
  );
  getIt.registerLazySingleton<CommentRepositories>(
    () => CommentRepositoriesImpl(
      commentImpRemoteRepo: getIt(),
    ),
  );
  getIt.registerLazySingleton<CommentUseCases>(
    () => CommentUseCases(getIt()),
  );
  getIt.registerLazySingleton<CommentCubit>(
    () => CommentCubit(getIt<CommentUseCases>()),
  );

  getIt.registerLazySingleton(() => PostCubit(getIt()));
}
