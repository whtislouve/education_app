import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:education_app/app/routes/app_router.dart';
import 'package:education_app/shared/ui/horizontal_card_shimmer/horizontal_card_shimmer.dart';

import 'package:education_app/entities/course/api/course_repository.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/entities/course/store/course_bloc.dart';
import 'package:education_app/entities/topic/ui/course_card.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class AllCoursesBottomSheetPage extends StatelessWidget {
  CourseRepository courseRepository = CourseRepository();
  AllCoursesBottomSheetPage({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.9,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BottomSheetTitleSection(title: "All Courses"),
            const Divider(
              color: Color.fromARGB(162, 158, 158, 158),
            ),
            BlocProvider(
              create: (_) =>
                  CourseBloc(courseDetailRepository: courseRepository)
                    ..add(const CourseEvents.getCourseDetailData()),
              child: BlocBuilder<CourseBloc, CourseStates>(
                builder: (context, state) {
                  return state.when(
                      initialState: () =>
                          const HorizontalCardShimmer(cardsAmount: 6),
                      acceptingCourseDetailData: (List<CourseModel> course) =>
                          SizedBox(
                              height: screenHeight,
                              child: ListView.builder(
                                  itemCount: course.length,
                                  itemBuilder: (context, index) {
                                    return CourseCard(
                                        onPressed: () {
                                          context.router.push(CourseDetailRoute(
                                              course: course[index]));
                                        },
                                        imageName:
                                            'assets/course_detail/${course[index].courseImageName}',
                                        courseTitle: course[index].title,
                                        courseInstructor:
                                            "${course[index].instructor.firstName} ${course[index].instructor.lastName}",
                                        coursePrice: course[index].coursePrice);
                                  })),
                      errorSendingCourseDetailRequest: (String error) =>
                          Text(error));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
