import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';

class TopicPageHeaderImageSection extends StatelessWidget {
  const TopicPageHeaderImageSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 304,
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
          Color.fromARGB(150, 17, 17, 17),
          Color.fromARGB(0, 200, 200, 200),
          Color.fromARGB(255, 255, 255, 255)
        ],
      ),
    );
  }
}
