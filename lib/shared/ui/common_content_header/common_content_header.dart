import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class CommonContentHeader extends StatelessWidget {
  const CommonContentHeader({
    super.key,
    required this.title,
    required this.headerButtonWidget,
  });
  final String title;
  final Widget headerButtonWidget;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return SizedBox(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: screenHeight * 0.024),
          ),
          headerButtonWidget,
        ],
      ),
    );
  }
}
