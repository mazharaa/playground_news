part of 'main_app_cubit.dart';

@freezed
class MainAppState with _$MainAppState {
  const factory MainAppState({
    required MainAppType type,
  }) = _MainAppState;

  const MainAppState._();

  factory MainAppState.empty() => const MainAppState(type: MainAppType.none());

  factory MainAppState.fromMap(Map<String, dynamic> map) {
    MainAppType convertType() {
      switch (map["type"]) {
        case 'pixelNews':
          return const MainAppType.pixelNews();
        case 'playGround':
          return const MainAppType.playGround();
        case 'helloWorld':
          return const MainAppType.helloWorld();
        default:
          return const MainAppType.none();
      }
    }

    return MainAppState(type: convertType());
  }

  Map<String, dynamic> toMap() {
    return {
      "type": type.when(
        none: () => 'none',
        pixelNews: () => 'pixelNews',
        playGround: () => 'playGround',
        helloWorld: () => 'helloWorld',
      ),
    };
  }
}

@freezed
class MainAppType with _$MainAppType {
  const factory MainAppType.none() = _None;
  const factory MainAppType.pixelNews() = _PixelNews;
  const factory MainAppType.playGround() = _PlayGround;
  const factory MainAppType.helloWorld() = _HelloWorld;
}
