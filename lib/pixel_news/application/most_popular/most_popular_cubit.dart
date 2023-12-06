import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart';

part 'most_popular_state.dart';
part 'most_popular_cubit.freezed.dart';

@injectable
class MostPopularCubit extends Cubit<MostPopularState> {
  final IHomeRepository _iHomeRepository;

  MostPopularCubit(this._iHomeRepository) : super(MostPopularState.initial()) {
    getMostPopular();
  }

  Future<void> getMostPopular() async {
    emit(state.copyWith(isLoading: true));

    final response = await _iHomeRepository.getMostPopular();

    emit(
      state.copyWith(
        isLoading: false,
        failureOrSucceed: optionOf(response),
      ),
    );
  }
}
