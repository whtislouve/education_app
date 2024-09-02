import 'package:flutter/material.dart';
import 'package:travel_app/entities/popular_courses_suggestion/ui/popular_courses_suggestion_card.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PopularCoursesSuggestionCarousel extends StatelessWidget {
  const PopularCoursesSuggestionCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 15),
          PopularCoursesSuggestionCard(
            courseAmountTime: '1h 12m',
            courseAmountLesson: '5',
            courseImage: Assets.explore.popularCourseImage1,
            courseTitle: 'How to Start an Amazon FBA store\non a Tight Budget',
            courseTeacherName: "Grabriella Susi",
            courseCost: 'IDR 219.000',
          ),
          const SizedBox(width: 15),
          PopularCoursesSuggestionCard(
            courseAmountTime: '2h 06m',
            courseAmountLesson: '7',
            courseTitle:
                "Beginner to Pro in Excel: Financial\nModeling & Valuation",
            courseTeacherName: "Azalea Susanti",
            courseCost: 'IDR 112.000',
            courseImage: Assets.explore.popularCourseImage2,
          ),
          const SizedBox(width: 15),
          PopularCoursesSuggestionCard(
            courseAmountTime: '2h 06m',
            courseAmountLesson: '7',
            courseTitle: "The Business Intelligence\nAnalyst Course 2022",
            courseTeacherName: "Bambang Subroto",
            courseCost: 'IDR 322.000',
            courseImage: Assets.explore.popularCourseImage3,
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
