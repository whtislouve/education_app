import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_card_image.dart';
import 'package:travel_app/widgets/ui/all_topics/topic_card_title_section.dart';
import 'package:travel_app/gen/assets.gen.dart';

class TopicCard extends StatelessWidget {
  TopicCard({
    super.key,
    required this.topicImage,
    required this.topicTitle,
    required this.topicDescription,
    required this.onPressed,
  });
  AssetGenImage topicImage;
  String topicTitle;
  String topicDescription;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final media = Provider.of<ScreenSizeModel>(context);
    final screenWidth = media.width;
    final screenHeight = media.height;
    return Container(
      width: screenWidth * 0.02,
      height: screenHeight * 0.1,
      padding:
          EdgeInsets.only(left: screenWidth * 0.05, right: screenWidth * 0.05),
      child: TextButton(
        style: ButtonStyle(padding: WidgetStateProperty.all(EdgeInsets.zero)),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopicCardImage(image: topicImage),
            Expanded(
              child: TopicCardTitleSection(
                  topicTitle: topicTitle,
                  topicShortDecription: topicDescription),
            ),
            Icon(Icons.arrow_forward_ios_sharp, size: screenHeight * 0.025),
          ],
        ),
      ),
    );
  }
}
