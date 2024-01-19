part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeRepo repo,
    @Default(HomeStatus.initial) HomeStatus status,
    @Default('') String error,
    List<StockScanResponse>? stockScanResponse,
  }) = HomeScreen;
}

enum HomeStatus {
  initial,
  loading,
  error,
  success,
}
