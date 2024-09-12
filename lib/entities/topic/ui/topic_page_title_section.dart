import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class TopicPageTitleSection extends StatelessWidget {
  const TopicPageTitleSection({
    super.key,
    required this.topicTitle,
  });
  final String topicTitle;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 200,
      left: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            child: Assets.explore.designTopics.image(),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 50,
                    color: Colors.black45,
                    offset: Offset(0, 15),
                  )
                ]),
          ),
          const SizedBox(width: 30),
          Container(
            width: 200,
            height: 80,
            // margin: EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(topicTitle,
                    // overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        height: 1.1)),
                const SizedBox(height: 7),
                Text(
                  '290 courses',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
