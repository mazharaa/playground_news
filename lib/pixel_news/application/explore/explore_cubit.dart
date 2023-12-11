import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart';

part 'explore_state.dart';
part 'explore_cubit.freezed.dart';

@injectable
class ExploreCubit extends Cubit<ExploreState> {
  final IExploreRepository _iExploreRepository;

  ExploreCubit(this._iExploreRepository) : super(ExploreState.initial());

  Future<void> exploreArticles(String query, String sortType) async {
    emit(state.copyWith(
        isLoading: true, sortType: sortType, failureOrSucceed: none()));

    final response = await _iExploreRepository.exploreArticles(
      query: query,
      sort: sortType,
    );

    emit(
      state.copyWith(
        isLoading: false,
        failureOrSucceed: optionOf(response),
        sortType: sortType,
      ),
    );
  }
}
