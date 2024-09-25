import 'package:flutter/material.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:travel_app/entities/topic/ui/popular_instructor_card.dart';

class PopularInstructorsCarousel extends StatelessWidget {
  PopularInstructorsCarousel({super.key, required this.instructors});
  final List<Instructors> instructors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: MediaQuery.of(context).size.width,
      height: 210,
      child: GridView.count(
          padding: EdgeInsets.only(top: 15),
          scrollDirection: Axis.horizontal,
          childAspectRatio: 0.3,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: instructors
              .map((ele) => Row(
                    children: [
                      PopularInstructorCard(
                        firstName: ele.firstName,
                        lastName: ele.lastName,
                        instructorTopics: ele.instructorTopics,
                        studentsAmount: ele.studentsAmount,
                        coursesAmount: ele.coursesAmount,
                      ),
                    ],
                  ))
              .toList()),
    );
  }
}
