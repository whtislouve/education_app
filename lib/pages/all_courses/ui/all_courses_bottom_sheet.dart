import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/app/routes/app_router.dart';
import 'package:travel_app/entities/course/api/course_repository.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/store/course_bloc.dart';
import 'package:travel_app/entities/topic/ui/course_card.dart';
import 'package:travel_app/widgets/ui/bottom_sheet_title_section.dart/bottom_sheet_title_section.dart';

@RoutePage()
class AllCoursesBottomSheetPage extends StatelessWidget {
  CourseRepository courseRepository = CourseRepository();
  AllCoursesBottomSheetPage({super.key});
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.9,
        child: BlocProvider(
          create: (_) => CourseBloc(courseDetailRepository: courseRepository)
            ..add(const CourseEvents.getCourseDetailData()),
          child: BlocBuilder<CourseBloc, CourseStates>(
            builder: (context, state) {
              return state.when(
                  initialState: () => Text("Loading "),
                  acceptingCourseDetailData: (List<CourseModel> course) =>
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const BottomSheetTitleSection(title: "All Courses"),
                            const Divider(
                              color: Color.fromARGB(162, 158, 158, 158),
                            ),
                            Container(
                                height: MediaQuery.of(context).size.height,
                                child: ListView.builder(
                                    itemCount: course.length,
                                    itemBuilder: (context, index) {
                                      return CourseCard(
                                          onPressed: () {
                                            context.router.push(
                                                CourseDetailRoute(
                                                    course: course[index]));
                                          },
                                          imageName:
                                              course[index].courseImageName,
                                          courseTitle: course[index].title,
                                          courseInstructor:
                                              "${course[index].instructor.firstName} ${course[index].instructor.lastName}",
                                          coursePrice:
                                              course[index].coursePrice);
                                    }))
                          ],
                        ),
                      ),
                  errorSendingCourseDetailRequest: (String error) =>
                      Text(error));
            },
          ),
        ));
  }
}
