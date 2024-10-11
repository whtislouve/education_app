import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:travel_app/entities/topic/ui/course_card.dart';
import 'package:travel_app/entities/topic/ui/topic_page_title_section.dart';
import 'package:travel_app/pages/popular_instructors/ui/popular_instructors_bottom_sheet.dart';
import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:travel_app/widgets/ui/popular_instructors/popular_instructors_carousel.dart';
import 'package:travel_app/widgets/ui/topic/ui/topic_page_header_image_section.dart';

@RoutePage()
class TopicPage extends StatelessWidget {
  const TopicPage({super.key, required this.topic});
  final Topic topic;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.45,
              child: LayoutBuilder(builder: (context, constraints) {
                return SizeInheritedWidget(
                  maxWidth: constraints.maxWidth,
                  maxHeight: constraints.maxHeight,
                  child: Stack(
                    children: [
                      const TopicPageHeaderImageSection(),
                      Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.04,
                              top: screenHeight * 0.04),
                          child: IconButton(
                            onPressed: () {
                              context.router.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: screenHeight * 0.04,
                            ),
                          )),
                      TopicPageTitleSection(
                        topicTitle: topic.title,
                      ),
                    ],
                  ),
                );
              }),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.03,
                  left: screenWidth * 0.04,
                  bottom: screenHeight * 0.025,
                ),
                child: Text(
                  "Sub Topics",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: screenHeight * 0.024),
                )),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.025,
                right: screenWidth * 0.025,
              ),
              child: Wrap(
                children: topic.subTopics
                    .map(
                      (el) => Container(
                        margin: EdgeInsets.only(right: screenWidth * 0.02),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.02,
                            vertical: screenHeight * 0.017),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text(el.subTopicTitle),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: CommonContentHeader(
                title: "Popular instructors",
                headerButtonWidget: TextButton(
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                        EdgeInsets.only(right: screenWidth * 0.02)),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return PopularInstructorsBottomSheetPage();
                        });
                  },
                  child: const Text("See All"),
                ),
              ),
            ),
            PopularInstructorsCarousel(
              instructors: topic.instructors,
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.04,
                ),
                child: Text(
                  "All Courses",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: screenHeight * 0.024),
                )),
            Column(
              children: topic.courses
                  .map((course) => CourseCard(
                        onPressed: () {
                          context.router
                              .push(CourseDetailRoute(course: course));
                        },
                        imageName:
                            'assets/course_detail/${course.courseImageName}',
                        courseTitle: course.title,
                        courseInstructor:
                            "${course.instructor.firstName} ${course.instructor.lastName}",
                        coursePrice: course.coursePrice,
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
