import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularInstructorSuggestionCard extends StatelessWidget {
  const PopularInstructorSuggestionCard({
    super.key,
    required this.popularInstructorCourse,
  });

  final CourseModel popularInstructorCourse;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth * 0.65,
      height: screenHeight * 0.43,
      margin: EdgeInsets.only(right: screenWidth * 0.025),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.vertical(
              top: Radius.circular(screenWidth * 0.04),
              bottom: Radius.circular(screenWidth * 0.04)),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: Image.asset(
                "assets/popular_teachers_carousel/${popularInstructorCourse.courseImageName}",
              ).image,
              alignment: Alignment.topCenter)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return TextButton(
            style:
                ButtonStyle(padding: WidgetStateProperty.all(EdgeInsets.zero)),
            onPressed: () {
              context.router
                  .push(CourseDetailRoute(course: popularInstructorCourse));
            },
            child: DarkeningGradient(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              borderRadiusGeometry: BorderRadiusDirectional.vertical(
                  top: Radius.circular(screenWidth * 0.04),
                  bottom: Radius.circular(screenWidth * 0.04)),
              colors: const [
                Color.fromARGB(0, 158, 158, 158),
                Color.fromARGB(82, 0, 0, 0),
              ],
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.065,
                  right: constraints.maxWidth * 0.065,
                  bottom: constraints.maxHeight * 0.044,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Popular in ${popularInstructorCourse.instructor.instructorTopics.split(', ')[0]}",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.amber[800]),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.013,
                    ),
                    Text(
                      popularInstructorCourse.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: constraints.maxHeight * 0.046,
                            height: 1.05,
                          ),
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.013,
                    ),
                    Text(
                      "${popularInstructorCourse.instructor.firstName} ${popularInstructorCourse.instructor.lastName}",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
