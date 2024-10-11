import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:flutter/material.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/entities/popular_course_suggestion/ui/popular_course_suggetion_card_image_caption.dart';
import 'package:education_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:provider/provider.dart';

class PopularCourseSuggestionCardImageSection extends StatelessWidget {
  const PopularCourseSuggestionCardImageSection({
    super.key,
    required this.courseImageName,
    required this.lessonsAmount,
    required this.totalLessonsTime,
    required this.courseModel,
  });
  final String totalLessonsTime;
  final String lessonsAmount;
  final String courseImageName;
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return Container(color: Colors.red, child: Text('Size data not found!'));
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenHeight = mediaQuery.height;
    return Container(
      width: maxWidth,
      height: screenHeight < 680 ? maxHeight * 0.62 : maxHeight * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
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
            course: courseModel,
            totalLessonsTime: totalLessonsTime,
            lessonsAmount: lessonsAmount,
          )),
    );
  }
}
