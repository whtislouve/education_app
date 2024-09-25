import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

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
    return Container(
      width: 280,
      // margin: EdgeInsets.only(bottom: 30, right: 30, left: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Assets.topic.popularInstructor.image(),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstName + ' ' + lastName,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  instructorTopics,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${studentsAmount} Students",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${coursesAmount} Courses",
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
