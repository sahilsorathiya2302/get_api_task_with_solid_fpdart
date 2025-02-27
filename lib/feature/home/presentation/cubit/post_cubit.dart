// presentation/cubit/post_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_get_api_task_wc/feature/home/data/models/post_models.dart';
import 'package:simple_get_api_task_wc/feature/home/domain/use_cases/get_posts_use_case.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  final GetPostsUseCase getPostsUseCase;

  PostCubit(this.getPostsUseCase) : super(PostsLoadingState()) {
    getPosts();
  }

  Future<void> getPosts() async {
    emit(PostsLoadingState());

    final result = await getPostsUseCase();

    result.fold(
      (failure) => emit(PostsErrorState(errorMessage: failure.message)),
      (posts) => emit(PostsLoadedState(post: posts)),
    );
  }
}
