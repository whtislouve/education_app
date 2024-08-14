import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/common_button.dart';
import 'package:travel_app/shared/ui/common_content_header.dart';

import 'package:travel_app/widgets/ui/popular_teacher_suggestion/popular_teacher_suggestion_card.dart';
import 'package:travel_app/widgets/ui/popular_teacher_suggestion/popular_teacher_suggestion_carousel.dart';
import 'package:travel_app/widgets/ui/popular_topics_suggestion/popular_topics_suggestion.dart';
import 'package:travel_app/widgets/ui/populart_courses_suggestion/popular_courses_suggestion_card.dart';

@RoutePage()
class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExplorePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PopularTeacherSuggestionCarousel(),
            CommonContentHeader(
              title: 'Topics',
              headerButtonWidget:
                  TextButton(onPressed: () {}, child: Text("All Topic")),
            ),
            const PopularTopicsSuggestion(),
            CommonContentHeader(
              title: 'Popular Courses',
              headerButtonWidget:
                  TextButton(onPressed: () {}, child: Text("See All")),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  PopularCoursesSuggestionCard(
                    courseAmountTime: '1h 12m',
                    courseAmountLesson: '5',
                    courseImage: Assets.explore.popularCourseImage1,
                    courseTitle:
                        'How to Start an Amazon FBA store\non a Tight Budget',
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
                    courseTitle:
                        "The Business Intelligence\nAnalyst Course 2022",
                    courseTeacherName: "Bambang Subroto",
                    courseCost: 'IDR 322.000',
                    courseImage: Assets.explore.popularCourseImage3,
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
