// presentation/cubit/post_state.dart
part of 'post_cubit.dart';

// presentation/cubit/post_state.dart
// part of 'post_cubit.dart';

// @freezed
// class PostState with _$PostState {
//   const factory PostState.initial() = _Initial;
//   const factory PostState.loading() = _Loading;
//   const factory PostState.loaded(List<Post> posts) = _Loaded;
//   const factory PostState.error(String message) = _Error;
// }

abstract class PostState {}

class PostsInitialState extends PostState {}

class PostsLoadingState extends PostState {}

class PostsLoadedState extends PostState {
  List<PostModel> post;

  PostsLoadedState({required this.post});
}

class PostsErrorState extends PostState {
  final String errorMessage;

  PostsErrorState({required this.errorMessage});
}
