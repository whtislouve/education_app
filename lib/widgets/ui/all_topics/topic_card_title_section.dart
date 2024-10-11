import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class TopicCardTitleSection extends StatelessWidget {
  const TopicCardTitleSection({
    super.key,
    required this.topicTitle,
    required this.topicShortDecription,
  });
  final String topicTitle;
  final String topicShortDecription;
  @override
  Widget build(BuildContext context) {
    final media = Provider.of<ScreenSizeModel>(context);
    final screenWidth = media.width;
    final screenHeight = media.height;
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            topicTitle,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontSize: screenHeight * 0.018),
          ),
          Text(topicShortDecription,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: const Color.fromRGBO(126, 140, 160, 1),
                    fontSize: screenHeight * 0.016,
                  )),
        ],
      ),
    );
  }
}
