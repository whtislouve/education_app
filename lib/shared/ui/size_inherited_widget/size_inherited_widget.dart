import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SizeInheritedWidget extends InheritedWidget {
  const SizeInheritedWidget({
    Key? key,
    required this.maxWidth,
    required this.maxHeight,
    required Widget child,
  }) : super(key: key, child: child);
  final double maxWidth;
  final double maxHeight;

  static SizeInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SizeInheritedWidget>();
  }

  @override
  bool updateShouldNotify(covariant SizeInheritedWidget oldWidget) {
    return oldWidget.maxWidth != maxWidth || oldWidget.maxHeight != maxHeight;
  }
}
