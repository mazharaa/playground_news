import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart';

part 'top_stories_state.dart';
part 'top_stories_cubit.freezed.dart';

@injectable
class TopStoriesCubit extends Cubit<TopStoriesState> {
  final IHomeRepository _iHomeRepository;

  TopStoriesCubit(this._iHomeRepository) : super(TopStoriesState.initial());

  Future getTopStories(String section) async {
    emit(state.unmodified.copyWith(
      failureOrSucceed: none(),
      isLoading: true,
    ));

    final response = await _iHomeRepository.getTopStories(section);

    emit(state.unmodified.copyWith(
      failureOrSucceed: optionOf(response),
      isLoading: false,
    ));
  }
}
