import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:education_app/gen/assets.gen.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class TopicPageTitleSection extends StatelessWidget {
  const TopicPageTitleSection({
    super.key,
    required this.topicTitle,
  });
  final String topicTitle;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Positioned.fill(
      top: maxWidth * 0.57,
      left: maxHeight * 0.06,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: maxWidth * 0.22,
            height: maxHeight * 0.25,
            alignment: Alignment.center,
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
            child: SvgPicture.asset(
              'assets/explore/designTopic.svg',
              width: maxHeight * 0.1,
              height: maxHeight * 0.1,
            ),
          ),
          SizedBox(width: maxWidth * 0.05),
          SizedBox(
            width: maxWidth * 0.6,
            height: maxHeight * 0.5,
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
                        fontSize: maxHeight * 0.08,
                        fontWeight: FontWeight.w600,
                        height: 1.1)),
                SizedBox(height: maxHeight * 0.01),
                const Text(
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
