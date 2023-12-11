part of 'explore_cubit.dart';

@freezed
class ExploreState with _$ExploreState {
  const ExploreState._();

  const factory ExploreState({
    required Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
    required bool isLoading,
    required String sortType,
  }) = _ExploreState;

  factory ExploreState.initial() => ExploreState(
        failureOrSucceed: none(),
        isLoading: false,
        sortType: 'newest',
      );

  ExploreState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceed: none(),
      );
}
