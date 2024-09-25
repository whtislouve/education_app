import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/all_topics_bottom_sheet/models/topic.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/topic/ui/course_card.dart';
import 'package:travel_app/entities/topic/ui/topic_page_title_section.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/pages/popular_instructors/ui/popular_instructors_bottom_sheet.dart';
import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:travel_app/widgets/ui/popular_instructors/popular_instructors_carousel.dart';
import 'package:travel_app/widgets/ui/topic/ui/topic_page_header_image_section.dart';

@RoutePage()
class TopicPage extends StatelessWidget {
  TopicPage({super.key, required this.topic});
  Topic topic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 404,
              child: Stack(
                children: [
                  TopicPageHeaderImageSection(),
                  Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 40),
                      child: IconButton(
                        onPressed: () {
                          context.router.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      )),
                  TopicPageTitleSection(
                    topicTitle: topic.title,
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, bottom: 25),
                child: Text(
                  "Sub Topics",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 18),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 25),
              child: Wrap(
                children: topic.subTopics
                    .map(
                      (el) => Container(
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)),
                          child: Text(el.subTopicTitle)),
                    )
                    .toList(),
              ),
            ),
            CommonContentHeader(
              title: "Popular instructors",
              headerButtonWidget: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return PopularInstructorsBottomSheetPage();
                      });
                },
                child: Text("See All"),
              ),
            ),
            PopularInstructorsCarousel(
              instructors: topic.instructors,
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, bottom: 15),
                child: Text(
                  "All Courses",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 18),
                )),
            Column(
              children: topic.courses
                  .map((course) => CourseCard(
                        onPressed: () {
                          context.router
                              .push(CourseDetailRoute(course: course));
                        },
                        imageName: course.courseImageName,
                        courseTitle: course.title,
                        courseInstructor: course.instructor.firstName,
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
