import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class CourseCardTitleSection extends StatelessWidget {
  const CourseCardTitleSection({
    super.key,
    required this.courseTitle,
    required this.courseInstructor,
    required this.coursePrice,
  });
  final String courseTitle;
  final String courseInstructor;
  final int coursePrice;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return Container(
        child: const Text("Size data not found"),
      );
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return SizedBox(
      width: maxWidth * 0.68,
      height: maxHeight * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            courseTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600, height: 1.1),
          ),
          SizedBox(height: maxHeight * 0.01),
          Text(
            courseInstructor,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.grey),
          ),
          SizedBox(height: maxHeight * 0.005),
          Text("\$ $coursePrice",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.primary))
        ],
      ),
    );
  }
}
