import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/pages/all_courses/ui/all_courses_bottom_sheet.dart';
import 'package:travel_app/pages/all_topics/ui/all_topics_bottom_sheet.dart';
import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
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
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    super.build(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.07,
                  left: screenWidth * 0.025,
                  bottom: screenHeight * 0.02),
              child: Text(
                "Explore",
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: screenHeight * 0.036),
              ),
            ),
            PopularInstructorSuggestionCarousel(),
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
                  child: const Text("See All")),
            ),
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.3,
              child: LayoutBuilder(builder: (context, constraints) {
                return SizeInheritedWidget(
                    maxWidth: constraints.maxWidth,
                    maxHeight: constraints.maxHeight,
                    child: PopularCoursesSuggestionCarousel());
              }),
            )
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBar(),
    );
  }
}
