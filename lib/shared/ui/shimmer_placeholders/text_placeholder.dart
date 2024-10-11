import 'package:flutter/material.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class TextPlaceholder extends StatelessWidget {
  const TextPlaceholder({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Container(
      width: maxWidth * 0.9,
      height: maxHeight * 0.03,
      color: Colors.white,
    );
  }
}
