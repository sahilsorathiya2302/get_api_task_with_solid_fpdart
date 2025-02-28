part of 'post_cubit.dart';

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
