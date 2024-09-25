import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/ui/course_detail_header_title.dart';
import 'package:travel_app/entities/course/ui/course_detail_review_mark.dart';
import 'package:travel_app/entities/course/ui/course_overview_tile.dart';
import 'package:travel_app/entities/topic/ui/popular_instructor_card.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/background_image_header_section/background_image_header_section.dart';
import 'package:travel_app/shared/ui/common_button/common_button.dart';
import 'package:travel_app/shared/ui/common_content_header/common_content_header.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';

@RoutePage()
class CourseDetailPage extends StatelessWidget {
  CourseDetailPage({super.key, required this.course});
  CourseModel course;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 470,
              child: BackgroundImageHeaderSection(
                  titlePosition: 300,
                  addBookMarkIcon: true,
                  backgroundImage: Assets.courseDetail.courseDetailHeaderImage,
                  titleWidget: CourseDetailHeaderTitle(
                    title: course.title,
                    description: course.description,
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Course Overview",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 15),
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
                      ? CourseOverviewTile(
                          icon: Icons.access_time,
                          title: "Full time access",
                        )
                      : SizedBox(),
                  course.courseOverview.accessMobileTV
                      ? CourseOverviewTile(
                          icon: Icons.mobile_friendly,
                          title: "Access on mobile & TV",
                        )
                      : SizedBox(),
                  course.courseOverview.certificatePresence
                      ? CourseOverviewTile(
                          icon: Icons.card_membership_rounded,
                          title: "Certificate on completion",
                        )
                      : SizedBox(),
                  CourseOverviewTile(
                    icon: Icons.people,
                    title: "${course.courseOverview.studentsAmount} Students",
                  ),
                  SizedBox(height: 30),
                  Text(
                    "About the instructor",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  PopularInstructorCard(
                    firstName: course.instructor.firstName,
                    lastName: course.instructor.lastName,
                    instructorTopics: course.instructor.instructorTopics,
                    studentsAmount: course.instructor.studentsAmount,
                    coursesAmount: course.instructor.coursesAmount,
                  ),
                  // SizedBox(height: 30),
                  CommonContentHeader(
                    title: "Reviews",
                    headerButtonWidget: TextButton(
                      onPressed: () {},
                      child: Text("See All"),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        Text("4.6"),
                        SizedBox(width: 10),
                        CourseDetailReviewMark(reviewMark: 4.6),
                      ],
                    ),
                  ),

                  Column(
                    children: course.reviews.map((review) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                review.userFirstName +
                                    " " +
                                    review.userLastName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.w600),
                              ),
                              CourseDetailReviewMark(
                                  reviewMark: review.reviewMark.toDouble()),
                            ],
                          ),
                          Text(
                            "6 Feburary 2024",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: Colors.grey),
                          ),
                          SizedBox(height: 15),
                          Text(review.reviewText),
                        ],
                      );
                    }).toList(),
                  ),

                  const Divider(
                    color: Color.fromARGB(162, 158, 158, 158),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${course.coursePrice}",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      CommonButton(
                        actionOnPress: () {},
                        child: Text("Enroll now"),
                        buttonIcon: Icon(Icons.add_to_queue_rounded),
                        buttonWidth: 162,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor:
                            Theme.of(context).colorScheme.secondary,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
