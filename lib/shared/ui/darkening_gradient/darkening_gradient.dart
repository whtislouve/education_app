import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DarkeningGradient extends StatelessWidget {
  DarkeningGradient({
    super.key,
    required this.colors,
    this.child,
    this.alignment = Alignment.topLeft,
    this.padding = const EdgeInsets.all(0),
    this.gradientBegin = Alignment.topCenter,
    this.gradienEnd = Alignment.center,
    this.width,
    this.height,
    this.borderRadiusGeometry,
  });
  final List<Color> colors;
  final Widget? child;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradienEnd;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadiusGeometry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadiusGeometry,
        gradient: LinearGradient(
          begin: gradientBegin,
          end: gradienEnd,
          colors: colors,
        ),
      ),
      alignment: alignment,
      padding: padding,
      child: child,
    );
  }
}
