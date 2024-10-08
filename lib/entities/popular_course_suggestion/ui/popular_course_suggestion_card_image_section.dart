import 'package:flutter/material.dart';
import 'package:travel_app/entities/popular_course_suggestion/ui/popular_course_suggetion_card_image_caption.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class PopularCourseSuggestionCardImageSection extends StatelessWidget {
  const PopularCourseSuggestionCardImageSection({
    super.key,
    required this.courseImageName,
    required this.lessonsAmount,
    required this.totalLessonsTime,
  });
  final String totalLessonsTime;
  final String lessonsAmount;
  final String courseImageName;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return Container(color: Colors.red, child: Text('Size data not found!'));
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Container(
      width: maxWidth,
      height: maxHeight * 0.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset("assets/explore/$courseImageName").image,
        ),
      ),
      child: DarkeningGradient(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(
            left: maxWidth * 0.03,
            top: maxHeight * 0.03,
            right: maxWidth * 0.03,
          ),
          colors: const [
            Color.fromARGB(178, 0, 0, 0),
            Color.fromARGB(0, 158, 158, 158),
          ],
          child: PopularCourseSuggetionCardImageCaption(
            totalLessonsTime: totalLessonsTime,
            lessonsAmount: lessonsAmount,
          )),
    );
  }
}
