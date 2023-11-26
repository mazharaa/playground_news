part of 'nav_bar_cubit.dart';

@freezed
class NavBarState with _$NavBarState {
  const factory NavBarState({
    required int selectedIndex,
  }) = _NavBarSate;

  const NavBarState._();

  factory NavBarState.initial() => const NavBarState(selectedIndex: 0);

  int selectedScreen(int index) {
    return index;
  }
}

@freezed
class NavBarType with _$NavBarType {
  const factory NavBarType.none() = _None;
  const factory NavBarType.home() = _Home;
  const factory NavBarType.search() = _Search;
  const factory NavBarType.favorite() = _Favorite;
  const factory NavBarType.setting() = _Setting;
}
