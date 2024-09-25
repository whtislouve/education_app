import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/course/api/course_repository.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/store/course_bloc.dart';
import 'package:travel_app/entities/popular_courses_suggestion/ui/popular_courses_suggestion_card.dart';
import 'package:travel_app/gen/assets.gen.dart';

class PopularCoursesSuggestionCarousel extends StatelessWidget {
  PopularCoursesSuggestionCarousel({super.key});
  CourseRepository courseDetailRepository = CourseRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CourseBloc(courseDetailRepository: courseDetailRepository)
        ..add(const CourseEvents.getPopularCoursesData()),
      child: BlocBuilder<CourseBloc, CourseStates>(
        builder: (context, state) {
          return state.when(
              initialState: () => Container(
                    child: Text("Loading"),
                  ),
              acceptingCourseDetailData: (List<CourseModel> courseDetails) =>
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: courseDetails
                            .map((course) => PopularCoursesSuggestionCard(
                                  course: course,
                                ))
                            .toList()),
                  ),
              errorSendingCourseDetailRequest: (String error) => Text(error));
        },
      ),
    );
  }
}
