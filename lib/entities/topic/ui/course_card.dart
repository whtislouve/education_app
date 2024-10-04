import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/entities/topic/ui/course_card_title_section.dart';

import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.courseTitle,
    required this.courseInstructor,
    required this.coursePrice,
    required this.onPressed,
    required this.imageName,
  });
  final String courseTitle;
  final String courseInstructor;
  final int coursePrice;
  final void Function() onPressed;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.135,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizeInheritedWidget(
            maxWidth: constraints.maxWidth,
            maxHeight: constraints.maxHeight,
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/courseDetail/$imageName'),
                      SizedBox(width: constraints.maxWidth * 0.01),
                      CourseCardTitleSection(
                        courseTitle: courseTitle,
                        courseInstructor: courseInstructor,
                        coursePrice: coursePrice,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02,
                      // vertical: screenHeight * 0.002,
                    ),
                    child: const Divider(
                      color: Color.fromARGB(162, 158, 158, 158),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
