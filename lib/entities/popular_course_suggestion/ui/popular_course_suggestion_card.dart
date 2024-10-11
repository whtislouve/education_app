import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/popular_course_suggestion/ui/popular_course_suggestion_card_image_section.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularCoursesSuggestionCard extends StatelessWidget {
  const PopularCoursesSuggestionCard({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth * 0.65,
      height: screenHeight * 0.4,
      margin: EdgeInsets.only(right: screenWidth * 0.02),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizeInheritedWidget(
            maxWidth: constraints.maxWidth,
            maxHeight: constraints.maxHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PopularCourseSuggestionCardImageSection(
                  courseModel: course,
                  courseImageName: course.courseImageName,
                  lessonsAmount: course.lessonsAmount.toString(),
                  totalLessonsTime: course.totalLessonsTime,
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.1,
                  child: TextButton(
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.zero)),
                    onPressed: () {
                      context.router.push(CourseDetailRoute(course: course));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: constraints.maxHeight * 0.02,
                          bottom: constraints.maxHeight * 0.01),
                      child: Text(course.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(letterSpacing: 0.1, height: 1.1)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(bottom: constraints.maxHeight * 0.01),
                  child: Text(
                    "${course.instructor.firstName} ${course.instructor.lastName}",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: const Color.fromARGB(255, 158, 158, 158)),
                  ),
                ),
                Text(
                  "\$ ${course.coursePrice.toString()}",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
