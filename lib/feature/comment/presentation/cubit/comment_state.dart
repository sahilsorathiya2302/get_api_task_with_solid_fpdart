import 'package:simple_get_api_task_wc/feature/comment/domain/entities/comment.dart';

abstract class CommentState {}

final class CommentInitialState extends CommentState {}

final class CommentLoadingState extends CommentState {}

final class CommentLoadedState extends CommentState {
  List<Comment> comment;

  CommentLoadedState({required this.comment});
}

final class CommentErrorState extends CommentState {
  final String errorMessage;

  CommentErrorState({required this.errorMessage});
}
