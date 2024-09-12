import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.topic.allCoursesImage.image(),
              const SizedBox(width: 15),
              Container(
                width: 255,
                height: 86,
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
                    const SizedBox(height: 3),
                    Text(
                      courseInstructor,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 3),
                    Text("IDR ${coursePrice}",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.primary))
                  ],
                ),
              )
            ],
          ),
        ),
        // LayoutBuilder(
        //   builder: (BuildContext context, BoxConstraints constraints) {  },
        //   child: Container(

        //     height: 1,
        //     color: Colors.black,
        //     padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        //   ),
        // )
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Divider(
            color: const Color.fromARGB(162, 158, 158, 158),
          ),
        ),
      ],
    );
  }
}
