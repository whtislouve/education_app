import 'package:flutter/material.dart';

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
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18),
          ),
          headerButtonWidget,
        ],
      ),
    );
  }
}
