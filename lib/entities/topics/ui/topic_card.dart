import 'package:flutter/material.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_image.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_title_section.dart';
import 'package:travel_app/gen/assets.gen.dart';

class TopicCard extends StatelessWidget {
  TopicCard({
    super.key,
    required this.topicImage,
    required this.topicTitle,
    required this.topicDescription,
  });
  AssetGenImage topicImage;
  String topicTitle;
  String topicDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TopicImage(image: topicImage),
              const SizedBox(width: 20),
              TopicTitleSection(
                  topicTitle: topicTitle,
                  topicShortDecription: topicDescription),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 24,
          ),
        ],
      ),
      // const SizedBox(height: 10)
    );
  }
}
