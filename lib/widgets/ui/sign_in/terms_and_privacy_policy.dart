import 'package:flutter/material.dart';

class TermsAndPrivacyPolicy extends StatelessWidget {
  const TermsAndPrivacyPolicy({super.key});
  @override
  Widget build(BuildContext context) {
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
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text('Terms'),
                ),
              ),
              const Text('and  '),
              SizedBox(
                height: 20,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: const Text("Privacy Policy"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
