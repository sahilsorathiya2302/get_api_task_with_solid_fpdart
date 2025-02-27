import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_get_api_task_wc/feature/comment/domain/use_cases/comment_use_cases.dart';
import 'package:simple_get_api_task_wc/feature/comment/presentation/cubit/comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  final CommentUseCases getCommentUseCases;
  CommentCubit(this.getCommentUseCases) : super(CommentLoadingState()) {
    getComment();
  }

  Future<void> getComment() async {
    emit(CommentLoadingState());
    final result = await getCommentUseCases();

    result.fold(
      (failure) => emit(CommentErrorState(errorMessage: failure.message)),
      (comment) => emit(CommentLoadedState(comment: comment)),
    );
  }
}
