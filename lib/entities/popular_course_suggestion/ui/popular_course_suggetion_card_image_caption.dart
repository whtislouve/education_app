import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularCourseSuggetionCardImageCaption extends StatelessWidget {
  const PopularCourseSuggetionCardImageCaption({
    super.key,
    required this.lessonsAmount,
    required this.totalLessonsTime,
  });
  final String totalLessonsTime;
  final String lessonsAmount;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return Container(
          color: Colors.red, child: const Text('Size data not found!'));
    }
    final maxWidth = sizeData.maxWidth;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              totalLessonsTime,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: maxWidth * 0.02, right: maxWidth * 0.02),
              width: maxWidth * 0.02,
              height: maxWidth * 0.02,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Text(
              '$lessonsAmount Lessons',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
        Icon(
          Icons.bookmark_border_outlined,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
