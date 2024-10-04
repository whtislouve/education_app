import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularInstructorCard extends StatelessWidget {
  const PopularInstructorCard({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.instructorTopics,
    required this.studentsAmount,
    required this.coursesAmount,
  });
  final String firstName;
  final String lastName;
  final String instructorTopics;
  final int studentsAmount;
  final int coursesAmount;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("Size data not found");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return SizedBox(
      width: maxWidth * 0.8,
      height: maxHeight * 0.55,
      // margin: EdgeInsets.only(bottom: 30, right: 30, left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: maxHeight * 0.4,
            height: maxHeight * 0.4,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Assets.topic.popularInstructor.image(),
          ),
          SizedBox(width: maxWidth * 0.015),
          SizedBox(
            width: maxWidth * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$firstName $lastName',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  instructorTopics,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$studentsAmount Students",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "$coursesAmount Courses",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
