import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class TopicCardImage extends StatelessWidget {
  const TopicCardImage({
    super.key,
    required this.image,
  });
  final AssetGenImage image;
  @override
  Widget build(BuildContext context) {
    final media = Provider.of<ScreenSizeModel>(context);
    final screenWidth = media.width;
    return Container(
      width: screenWidth * 0.15,
      height: screenWidth * 0.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth * 0.01),
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(235, 239, 255, 1),
          )),
      child: Image(image: image.provider()),
    );
  }
}
