import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_app/pages/sign_in_with_email_page/features/sign_in_with_email_repository.dart';

part 'sign_in_events.dart';
part 'sign_in_states.dart';
part 'sign_in_bloc.freezed.dart';
// part 'sign_in_bloc.g.dart';

class SignInBloc extends Bloc<SignInEvents, SignInStates> {
  SignInWithEmailRepository repository;
  SignInBloc({required this.repository})
      : super(SignInStates.initialSignInState()) {
    on<SignInEvents>((event, emit) {
      event.map(
        signInButtonPressed: (event) async {
          try {
            // print('BLOC signButtonPressed');
            // print(event);
            final data = await repository.sendSignInWithEmailRequest(event);
            emit(SignInStates.acceptingSignInResponse(signInToken: data[0]));
          } catch (e) {
            emit(SignInStates.errorSendSignInData(errorText: e.toString()));
          }
        },
      );
    });
  }
}
