import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    @Default('') String login,
    @Default('') String password,
  }) = _Initial;
}
