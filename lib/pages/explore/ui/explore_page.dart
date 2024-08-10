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
            PopularCoursesSuggestionCard(),
          ],
        ),
      ),
    );
  }
}
