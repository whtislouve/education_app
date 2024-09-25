import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/all_courses/ui/all_courses_bottom_sheet.dart';

import 'package:travel_app/pages/all_topics/ui/all_topics_bottom_sheet.dart';

import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';

import 'package:travel_app/widgets/ui/popular_teacher_suggestion_carousel/popular_teacher_suggestion_carousel.dart';
import 'package:travel_app/widgets/ui/popular_topics_suggestion/popular_topics_suggestion.dart';

import 'package:travel_app/widgets/ui/popular_courses_suggestion_carousel/popular_courses_suggestion_carousel.dart';

@RoutePage()
class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExplorePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PopularTeacherSuggestionCarousel(),
            CommonContentHeader(
              title: "Topics",
              headerButtonWidget: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return AllTopicsBottomSheetPage();
                      });
                },
                child: const Text("All Topics"),
              ),
            ),
            const PopularTopicsSuggestion(),
            CommonContentHeader(
              title: 'Popular Courses',
              headerButtonWidget: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return AllCoursesBottomSheetPage();
                        });
                  },
                  child: Text("See All")),
            ),
            PopularCoursesSuggestionCarousel()
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBar(),
    );
  }
}
