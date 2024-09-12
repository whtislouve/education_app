import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class TopicCardImage extends StatelessWidget {
  const TopicCardImage({
    super.key,
    required this.image,
  });
  final AssetGenImage image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Color.fromRGBO(235, 239, 255, 1),
          )),
      child: Image(image: image.provider()),
    );
  }
}
