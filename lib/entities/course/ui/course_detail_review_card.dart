import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/ui/course_detail_review_mark.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class CourseDetailReviewCard extends StatelessWidget {
  const CourseDetailReviewCard({
    super.key,
    required this.courseReviews,
  });
  final CourseReviews courseReviews;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.17,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${courseReviews.userFirstName} ${courseReviews.userLastName}",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: screenHeight * 0.0185),
                ),
                CourseDetailReviewMark(
                    reviewMark: courseReviews.reviewMark.toDouble()),
              ],
            ),
            Text(
              "6 Feburary 2024",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Colors.grey),
            ),
            SizedBox(height: constraints.maxHeight * 0.015),
            Text(
              courseReviews.reviewText,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: screenHeight * 0.018),
            ),
            const Divider(
              color: Color.fromARGB(162, 158, 158, 158),
            ),
          ],
        );
      }),
    );
  }
}
