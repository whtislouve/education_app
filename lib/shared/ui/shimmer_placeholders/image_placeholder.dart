import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
    required this.imageWidth,
    required this.imageHeight,
  });
  final double imageWidth;
  final double imageHeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageWidth,
      height: imageHeight,
      color: Colors.white,
    );
  }
}
