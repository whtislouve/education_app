import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return SizedBox(
      width: maxWidth * 0.4,
      height: maxHeight * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.signIn.appIcon.image(
            width: maxHeight * 0.082,
            height: maxHeight * 0.082,
          ),
          Container(
            width: maxWidth * 0.2,
            height: maxHeight * 0.1,
            margin: EdgeInsets.only(left: maxWidth * 0.01),
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
