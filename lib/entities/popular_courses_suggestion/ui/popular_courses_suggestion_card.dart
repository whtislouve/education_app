import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';

class PopularCoursesSuggestionCard extends StatelessWidget {
  PopularCoursesSuggestionCard({
    super.key,
    required this.course,
  });

  CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: EdgeInsets.only(left: 15),
      child: TextButton(
        style: ButtonStyle(padding: WidgetStateProperty.all(EdgeInsets.zero)),
        onPressed: () {
          context.router.push(CourseDetailRoute(course: course));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 260,
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset("assets/explore/${course.courseImageName}")
                      .image,
                ),
              ),
              child: DarkeningGradient(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                colors: [
                  Color.fromARGB(178, 0, 0, 0),
                  Color.fromARGB(0, 158, 158, 158),
                ],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          course.totalLessonsTime,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8, right: 8),
                          width: 5,
                          height: 5,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        Text(
                          '${course.lessonsAmount}Lessons',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 3),
              child: Text(course.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(letterSpacing: 0.1, height: 1.1)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(
                course.instructor.firstName + " " + course.instructor.lastName,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Color.fromARGB(255, 158, 158, 158)),
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
      ),
    );
  }
}
