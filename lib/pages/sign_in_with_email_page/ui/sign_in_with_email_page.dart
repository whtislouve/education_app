import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/gen/assets.gen.dart';
import 'package:education_app/entities/sign_in_with_email/api/sign_in_with_email_repository.dart';
import 'package:education_app/entities/sign_in_with_email/models/sign_in_with_email_form_keys.dart';
import 'package:education_app/entities/sign_in_with_email/store/sign_in_bloc.dart';
import 'package:education_app/shared/ui/common_button/common_button.dart';
import 'package:education_app/shared/ui/common_text_field/common_text_field.dart';
import 'package:education_app/shared/ui/dismiss_keyboard/dismiss_keyboard.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

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
                            CommonTextField(
                              name: 'email',
                              title: 'Email',
                              hintText: 'Type your email',
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: "No email"),
                                FormBuilderValidators.email(
                                    errorText: "Incorrect email"),
                              ]),
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
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: "No password"),
                                // FormBuilderValidators.hasLowercaseChars()
                                FormBuilderValidators.password(
                                    minLength: 5,
                                    minLowercaseCount: 0,
                                    minUppercaseCount: 0,
                                    minSpecialCharCount: 0,
                                    errorText:
                                        "Wrong password, passwordMinLen:5,lowwerCase:0,upperCase:0"),
                              ]),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            CommonButton(
                              buttonWidth: screenWidth,
                              buttonHeight: screenHeight * 0.05,
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
                              buttonWidth: screenWidth,
                              buttonHeight: screenHeight * 0.05,
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              actionOnPress: () {
                                if (_formKey.currentState?.saveAndValidate() ??
                                    false) {
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
                                }
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
