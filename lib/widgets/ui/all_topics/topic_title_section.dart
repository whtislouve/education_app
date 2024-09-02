import 'package:flutter/material.dart';

class TopicTitleSection extends StatelessWidget {
  const TopicTitleSection(
      {super.key,
      required this.topicTitle,
      required this.topicShortDecription});
  final String topicTitle;
  final String topicShortDecription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        Text(
          topicTitle,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14),
        ),
        Text(topicShortDecription,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: const Color.fromRGBO(126, 140, 160, 1),
                  fontSize: 12,
                )),
        const SizedBox(height: 5),
      ],
    );
  }
}
