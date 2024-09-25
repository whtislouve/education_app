import 'package:flutter/material.dart';

class CourseDetailReviewMark extends StatelessWidget {
  const CourseDetailReviewMark({super.key, required this.reviewMark});
  final double reviewMark;
  static const starAmount = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starAmount,
        (int index) => Icon(
          Icons.star,
          color: reviewMark.round() > index ? Colors.orange : Colors.grey,
        ),
      ),
    );
  }
}
