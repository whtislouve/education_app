import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DarkeningGradient extends StatelessWidget {
  DarkeningGradient({
    super.key,
    required this.colors,
    required this.child,
    this.alignment = Alignment.topLeft,
    this.padding = const EdgeInsets.all(0),
  });
  final List<Color> colors;
  final Widget child;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: colors,
        ),
      ),
      alignment: alignment,
      padding: padding,
      child: child,
    );
  }
}
