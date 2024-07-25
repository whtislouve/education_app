part of 'sign_in_bloc.dart';

@freezed
class SignInEvents with _$SignInEvents {
  const factory SignInEvents.signInButtonPressed(
      String email, String password) = SignInButtonPressed;
}
