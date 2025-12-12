import 'package:base/app/app.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState extends BaseState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default('') String messenger
  }) = _HomeState;
}