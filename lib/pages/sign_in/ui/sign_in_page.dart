import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';

import 'package:travel_app/shared/ui/common_button/common_button.dart';

import 'package:travel_app/widgets/ui/sign_in/sign_in_header.dart';
import 'package:travel_app/widgets/ui/sign_in/terms_and_privacy_policy.dart';

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
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            margin: const EdgeInsets.only(top: 140),
            child: Column(
              children: [
                const SignInHeader(),
                const TermsAndPrivacyPolicy(),
                const SizedBox(
                  height: 40,
                ),
                CommonButton(
                  actionOnPress: () {},
                  buttonIcon: Icon(
                    Icons.apple,
                    color: theme.colorScheme.onSecondary,
                  ),
                  backgroundColor: theme.colorScheme.secondary,
                  sideColor: BorderSide(color: theme.colorScheme.onSecondary),
                  child: Text(
                    'Sign in with Apple',
                    style: TextStyle(color: theme.colorScheme.onSecondary),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CommonButton(
                  actionOnPress: () {},
                  buttonIcon: Icon(
                    Icons.g_mobiledata,
                    color: theme.colorScheme.onSecondary,
                  ),
                  backgroundColor: theme.colorScheme.secondary,
                  sideColor: BorderSide(color: theme.colorScheme.onSecondary),
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(color: theme.colorScheme.onSecondary),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CommonButton(
                  actionOnPress: () {},
                  buttonIcon: Icon(
                    Icons.facebook,
                    color: theme.colorScheme.onSecondary,
                  ),
                  backgroundColor: theme.colorScheme.secondary,
                  sideColor: BorderSide(color: theme.colorScheme.onSecondary),
                  child: Text(
                    'Sign in with Facebook',
                    style: TextStyle(color: theme.colorScheme.onSecondary),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 144,
                      height: 1,
                      color: Colors.black,
                      margin: const EdgeInsets.only(right: 12),
                    ),
                    const Text('Or'),
                    Container(
                      width: 144,
                      height: 1,
                      color: Colors.black,
                      margin: const EdgeInsets.only(left: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CommonButton(
                  actionOnPress: _goToSignInWithEmailPage,
                  backgroundColor: theme.colorScheme.primary,
                  child: Text(
                    "Sign in with Email",
                    style: TextStyle(color: theme.colorScheme.secondary),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New to brainy academy? '),
                    SizedBox(
                      height: 48,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: const Text('Sign up here'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
