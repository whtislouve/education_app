import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
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
}
