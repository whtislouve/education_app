import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonButton extends StatelessWidget {
  CommonButton({
    super.key,
    this.actionOnPress,
    required this.child,
    required this.buttonHeight,
    required this.buttonWidth,
    this.buttonIcon,
    this.backgroundColor,
    this.foregroundColor,
    this.sideColor,
  });
  final void Function()? actionOnPress;
  final Widget child;
  final double buttonWidth;
  final double buttonHeight;
  Color? backgroundColor;
  Color? foregroundColor;
  BorderSide? sideColor;

  Widget? buttonIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(3),
            ),
          ),
        ),
        side: WidgetStateProperty.all(sideColor),
        fixedSize: WidgetStateProperty.all(Size(buttonWidth, buttonHeight)),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        foregroundColor: WidgetStateProperty.all(foregroundColor),
      ),
      onPressed: actionOnPress,
      label: child,
      icon: buttonIcon,
    );
  }
}
