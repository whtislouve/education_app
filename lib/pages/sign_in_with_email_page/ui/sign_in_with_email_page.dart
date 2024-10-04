import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/pages/sign_in_with_email_page/features/sign_in_with_email_repository.dart';
import 'package:travel_app/pages/sign_in_with_email_page/models/sign_in_with_email_form_keys.dart';
import 'package:travel_app/shared/stores/sign_in_bloc.dart';
import 'package:travel_app/shared/ui/common_button/common_button.dart';
import 'package:travel_app/shared/ui/common_text_field/common_text_field.dart';
import 'package:travel_app/shared/ui/dismiss_keyboard/dismiss_keyboard.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

@RoutePage()
class SignInWithEmailPage extends StatefulWidget {
  const SignInWithEmailPage({super.key});

  @override
  State<SignInWithEmailPage> createState() => _SignInWithEmailPageState();
}

class _SignInWithEmailPageState extends State<SignInWithEmailPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final SignInWithEmailRepository _repository = SignInWithEmailRepository();

  bool obscureTextInput = true;

  void _showHiddenPassword() {
    setState(() {
      obscureTextInput = !obscureTextInput;
    });
  }

  _goToForgotPasswordPage() {
    context.router.push(const ForgotPasswordRoute());
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Scaffold(
      appBar: AppBar(),
      body: DismissKeyboard(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(
            left: screenWidth * 0.06,
            right: screenWidth * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in with Email',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Text('Input your brainly account!'),
              BlocProvider(
                create: (_) => SignInBloc(repository: _repository),
                child: BlocBuilder<SignInBloc, SignInStates>(
                  builder: (context, state) {
                    return state.when(
                      initialSignInState: () => FormBuilder(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: screenHeight * 0.02),
                            const CommonTextField(
                              name: 'email',
                              title: 'Email',
                              hintText: 'Type your email',
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            CommonTextField(
                              name: 'password',
                              title: 'Password',
                              hintText: 'Type your password',
                              suffixImage: Assets.signIn.eyeOff,
                              onPressSuffixImage: _showHiddenPassword,
                              obscureText: obscureTextInput,
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            CommonButton(
                              actionOnPress: _goToForgotPasswordPage,
                              backgroundColor:
                                  Theme.of(context).colorScheme.error,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onError,
                              child: const Text('Forgot password?'),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            CommonButton(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              actionOnPress: () {
                                context.pushRoute(const HomeRoute());
                                context.read<SignInBloc>().add(
                                    SignInEvents.signInButtonPressed(
                                        _formKey
                                            .currentState
                                            ?.fields[
                                                SignInWithEmailFormKeys.email]
                                            ?.value,
                                        _formKey
                                            .currentState
                                            ?.fields[SignInWithEmailFormKeys
                                                .password]
                                            ?.value));
                              },
                              child: const Text('Sign in Now'),
                            ),
                          ],
                        ),
                      ),
                      acceptingSignInResponse: (_) => const Text('Loading'),
                      errorSendSignInData: (errorText) => Text(errorText),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
