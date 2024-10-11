import 'package:flutter/material.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/features/wishList/wishListFeatures.dart';

import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularCourseSuggetionCardImageCaption extends StatelessWidget {
  const PopularCourseSuggetionCardImageCaption({
    super.key,
    required this.lessonsAmount,
    required this.totalLessonsTime,
    required this.course,
  });
  final String totalLessonsTime;
  final String lessonsAmount;
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return Container(
          color: Colors.red, child: const Text('Size data not found!'));
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return SizedBox(
      width: maxWidth,
      height: maxHeight * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                totalLessonsTime,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: maxWidth * 0.02, right: maxWidth * 0.02),
                width: maxWidth * 0.02,
                height: maxWidth * 0.02,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Text(
                '$lessonsAmount Lessons',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          ),
          IconButton(
            iconSize: maxHeight * 0.08,
            padding: EdgeInsets.zero,
            onPressed: () async {
              await WishListFeatures().addCourseToWishList(
                course: course,
                imagePath: "assets/explore/${course.courseImageName}",
              );
            },
            icon: const Icon(
              Icons.bookmark_border_outlined,
            ),
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
