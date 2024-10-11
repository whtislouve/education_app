import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/ui/course_detail_header_title.dart';
import 'package:travel_app/entities/course/ui/course_detail_review_mark.dart';
import 'package:travel_app/entities/course/ui/course_overview_tile.dart';
import 'package:travel_app/entities/topic/ui/popular_instructor_card.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/entities/course/ui/course_detail_review_card.dart';
import 'package:travel_app/shared/ui/background_image_header_section/background_image_header_section.dart';
import 'package:travel_app/shared/ui/common_button/common_button.dart';
import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

@RoutePage()
class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key, required this.course});
  final CourseModel course;
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
                  child: BackgroundImageHeaderSection(
                      course: course,
                      titlePosition: constraints.maxHeight * 0.6,
                      addBookMarkIcon: true,
                      backgroundImage:
                          Assets.courseDetail.courseDetailHeaderImage,
                      titleWidget: CourseDetailHeaderTitle(
                        title: course.title,
                        description: course.description,
                      )),
                );
              }),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.045,
                  right: screenWidth * 0.045,
                  top: screenHeight * 0.025),
              width: screenWidth,
              child: LayoutBuilder(builder: (context, constriants) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Course Overview",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontSize: screenHeight * 0.024),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    CourseOverviewTile(
                      icon: Icons.play_circle_outline_outlined,
                      title:
                          "${course.courseOverview.hoursOnDemandVideo} hours of on-demand video",
                    ),
                    CourseOverviewTile(
                      icon: Icons.article_outlined,
                      title: "${course.courseOverview.articlesAmount} article",
                    ),
                    CourseOverviewTile(
                      icon: Icons.file_download_outlined,
                      title:
                          "${course.courseOverview.amountResources} downloadable resources",
                    ),
                    course.courseOverview.anyTimeAccess
                        ? const CourseOverviewTile(
                            icon: Icons.access_time,
                            title: "Full time access",
                          )
                        : const SizedBox(),
                    course.courseOverview.accessMobileTV
                        ? const CourseOverviewTile(
                            icon: Icons.mobile_friendly,
                            title: "Access on mobile & TV",
                          )
                        : const SizedBox(),
                    course.courseOverview.certificatePresence
                        ? const CourseOverviewTile(
                            icon: Icons.card_membership_rounded,
                            title: "Certificate on completion",
                          )
                        : const SizedBox(),
                    CourseOverviewTile(
                      icon: Icons.people,
                      title: "${course.courseOverview.studentsAmount} Students",
                    ),
                    SizedBox(height: screenHeight * 0.035),
                    Text(
                      "About the instructor",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontSize: screenHeight * 0.024),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    SizedBox(
                      width: screenWidth * 1.2,
                      height: screenHeight * 0.1,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return SizeInheritedWidget(
                          maxWidth: constraints.maxWidth,
                          maxHeight: constraints.maxHeight,
                          child: PopularInstructorCard(
                            firstName: course.instructor.firstName,
                            lastName: course.instructor.lastName,
                            instructorTopics:
                                course.instructor.instructorTopics,
                            studentsAmount: course.instructor.studentsAmount,
                            coursesAmount: course.instructor.coursesAmount,
                          ),
                        );
                      }),
                    ),
                    // SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.045),
                      child: CommonContentHeader(
                        title: "Reviews",
                        headerButtonWidget: TextButton(
                          onPressed: () {},
                          child: const Text("See All"),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                      child: Row(
                        children: [
                          Text(
                            "4.6",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontSize: screenHeight * 0.024,
                                ),
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          const CourseDetailReviewMark(reviewMark: 4.6),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: screenHeight * 0.17 * course.reviews.length,
                      child: Column(
                        children: course.reviews.map((review) {
                          return CourseDetailReviewCard(courseReviews: review);
                        }).toList(),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: screenWidth * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ ${course.coursePrice}",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          CommonButton(
                            actionOnPress: () {},
                            buttonIcon: const Icon(Icons.add_to_queue_rounded),
                            buttonWidth: screenWidth * 0.4,
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.secondary,
                            child: const Text("Enroll now"),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
