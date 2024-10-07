import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class TopicPageHeaderImageSection extends StatelessWidget {
  const TopicPageHeaderImageSection({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Container(
      width: maxWidth,
      height: maxHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Assets.topic.topicHeaderImage.provider(),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth),
      ),
      child: DarkeningGradient(
        gradientBegin: Alignment.topCenter,
        gradienEnd: Alignment.bottomCenter,
        colors: const [
          Color.fromARGB(239, 0, 0, 0),
          Color.fromARGB(0, 200, 200, 200),
          Color.fromARGB(42, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 255, 255, 255)
        ],
      ),
    );
  }
}
