part of 'sign_in_bloc.dart';

@freezed
class SignInStates with _$SignInStates {
  const factory SignInStates.initialSignInState() = _InitialSignInState;
  // const factory SignInStates.loading() = _LoadingSignInStates;
  const factory SignInStates.acceptingSignInResponse(
      {required String signInToken}) = _AcceptingSignInResponse;
  const factory SignInStates.errorSendSignInData({required String errorText}) =
      _ErrorSendSignInData;
}
