import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';

class PopularCoursesSuggestionCard extends StatelessWidget {
  const PopularCoursesSuggestionCard({
    super.key,
    required this.courseAmountTime,
    required this.courseAmountLesson,
    required this.courseTitle,
    required this.courseTeacherName,
    required this.courseCost,
    required this.courseImage,
  });
  final String courseAmountTime;
  final String courseAmountLesson;
  final String courseTitle;
  final String courseTeacherName;
  final String courseCost;
  final AssetGenImage courseImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 260,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: courseImage.provider(),
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
                      courseAmountTime,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8, right: 8),
                      width: 5,
                      height: 5,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Text(
                      '$courseAmountLesson Lessons',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
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
          padding: const EdgeInsets.only(top: 10, bottom: 7),
          child: Text(courseTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(letterSpacing: 0.1)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Text(
            courseTeacherName,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Color.fromARGB(255, 158, 158, 158)),
          ),
        ),
        Text(
          courseCost,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      ],
    );
  }
}
