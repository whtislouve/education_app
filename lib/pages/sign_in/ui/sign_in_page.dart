import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/common_button.dart';
import 'package:travel_app/shared/ui/custom_blur_effect.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  void _goToSignInWithEmailPage() {
    context.router.push(SignInWithEmailRoute());
  }

  Widget _signInHeader(BuildContext context) {
    return Container(
      width: 140,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.signIn.appIcon.image(width: 36, height: 41),
          Container(
            width: 90,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('curso', style: Theme.of(context).textTheme.titleLarge),
                const Text(
                  'academy',
                  style: TextStyle(height: 0.5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _termsAndPrivacyPolicy() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("By using our services you are agreeing to our"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Terms'),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              Text('and  '),
              SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Privacy Policy"),
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
                _signInHeader(context),
                _termsAndPrivacyPolicy(),
                const SizedBox(
                  height: 40,
                ),
                CommonButton(
                  buttonHeight: 48,
                  buttonWidth: 338,
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
                  buttonHeight: 48,
                  buttonWidth: 338,
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
                  buttonHeight: 48,
                  buttonWidth: 338,
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
                  buttonHeight: 48,
                  buttonWidth: 338,
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
