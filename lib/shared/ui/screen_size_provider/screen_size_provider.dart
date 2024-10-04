import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class ScreenSizeProvider extends StatelessWidget {
  final Widget child;
  const ScreenSizeProvider({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenSize =
        ScreenSizeModel(mediaQuery.size.width, mediaQuery.size.height);
    return Provider<ScreenSizeModel>.value(
      value: screenSize,
      child: child,
    );
  }
}
