import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/shared/ui/common_button/common_button.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:education_app/widgets/ui/sign_in/sign_in_header.dart';
import 'package:education_app/widgets/ui/sign_in/terms_and_privacy_policy.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _goToSignInWithEmailPage() {
    context.router.push(const SignInWithEmailRoute());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: screenHeight * 0.7,
            margin: EdgeInsets.only(top: screenHeight * 0.14),
            child: LayoutBuilder(builder: (context, constraints) {
              return SizeInheritedWidget(
                maxWidth: constraints.maxWidth,
                maxHeight: constraints.maxHeight,
                child: Column(
                  children: [
                    const SignInHeader(),
                    const TermsAndPrivacyPolicy(),
                    SizedBox(
                      height: constraints.maxHeight * 0.04,
                    ),
                    CommonButton(
                      actionOnPress: () {},
                      buttonIcon: Icon(
                        Icons.apple,
                        color: theme.colorScheme.onSecondary,
                        size: constraints.maxHeight * 0.03,
                      ),
                      backgroundColor: theme.colorScheme.secondary,
                      sideColor:
                          BorderSide(color: theme.colorScheme.onSecondary),
                      child: Text(
                        'Sign in with Apple',
                        style: TextStyle(color: theme.colorScheme.onSecondary),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    CommonButton(
                      actionOnPress: () {},
                      buttonIcon: Icon(Icons.g_mobiledata,
                          color: theme.colorScheme.onSecondary,
                          size: constraints.maxHeight * 0.03),
                      backgroundColor: theme.colorScheme.secondary,
                      sideColor:
                          BorderSide(color: theme.colorScheme.onSecondary),
                      child: Text(
                        'Sign in with Google',
                        style: TextStyle(color: theme.colorScheme.onSecondary),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    CommonButton(
                      actionOnPress: () {},
                      buttonIcon: Icon(
                        Icons.facebook,
                        color: theme.colorScheme.onSecondary,
                        size: constraints.maxHeight * 0.03,
                      ),
                      backgroundColor: theme.colorScheme.secondary,
                      sideColor:
                          BorderSide(color: theme.colorScheme.onSecondary),
                      child: Text(
                        'Sign in with Facebook',
                        style: TextStyle(color: theme.colorScheme.onSecondary),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.4,
                          height: constraints.maxHeight * 0.001,
                          color: Colors.black,
                          margin: EdgeInsets.only(right: screenWidth * 0.012),
                        ),
                        const Text('Or'),
                        Container(
                          width: constraints.maxWidth * 0.4,
                          height: constraints.maxHeight * 0.001,
                          color: Colors.black,
                          margin: EdgeInsets.only(
                              left: constraints.maxWidth * 0.012),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.025,
                    ),
                    CommonButton(
                      actionOnPress: _goToSignInWithEmailPage,
                      backgroundColor: theme.colorScheme.primary,
                      child: Text(
                        "Sign in with Email",
                        style: TextStyle(color: theme.colorScheme.secondary),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('New to brainy academy? '),
                        SizedBox(
                          height: constraints.maxHeight * 0.048,
                          child: TextButton(
                            onPressed: () {},
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            child: const Text('Sign up here'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
