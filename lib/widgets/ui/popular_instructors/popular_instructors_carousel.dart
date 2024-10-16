import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:education_app/entities/topic/ui/popular_instructor_card.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularInstructorsCarousel extends StatelessWidget {
  const PopularInstructorsCarousel({super.key, required this.instructors});
  final List<Instructors> instructors;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return SizedBox(
      // margin: EdgeInsets.only(left: 15),
      width: screenWidth * 0.8 * instructors.length,
      height: screenHeight * 0.2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizeInheritedWidget(
            maxWidth: constraints.maxWidth,
            maxHeight: constraints.maxHeight,
            child: GridView.count(
                scrollDirection: Axis.horizontal,
                childAspectRatio: screenWidth * 0.0006,
                padding: EdgeInsets.only(left: constraints.maxWidth * 0.02),
                shrinkWrap: true,
                crossAxisCount: 2,
                children: instructors
                    .map((ele) => Expanded(
                          child: Row(
                            children: [
                              PopularInstructorCard(
                                firstName: ele.firstName,
                                lastName: ele.lastName,
                                instructorTopics: ele.instructorTopics,
                                studentsAmount: ele.studentsAmount,
                                coursesAmount: ele.coursesAmount,
                              ),
                            ],
                          ),
                        ))
                    .toList()),
          );
        },
      ),
    );
  }
}
