import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/entities/course/api/course_repository.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/course/store/course_bloc.dart';
import 'package:travel_app/entities/popular_course_suggestion/ui/popular_course_suggestion_card.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:travel_app/widgets/ui/popular_courses_suggestion_carousel/popular_courses_suggestion_carousel_shimmer.dart';

class PopularCoursesSuggestionCarousel extends StatelessWidget {
  PopularCoursesSuggestionCarousel({super.key});
  CourseRepository courseDetailRepository = CourseRepository();
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return BlocProvider(
      create: (_) => CourseBloc(courseDetailRepository: courseDetailRepository)
        ..add(const CourseEvents.getPopularCoursesData()),
      child: BlocBuilder<CourseBloc, CourseStates>(
        builder: (context, state) {
          return state.when(
              initialState: () => SizedBox(
                    width: maxWidth,
                    height: maxHeight,
                    child: const PopularCoursesSuggestionCarouselShimmer(),
                  ),
              acceptingCourseDetailData: (List<CourseModel> courseDetails) =>
                  // Container(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: courseDetails
                          .map((course) => PopularCoursesSuggestionCard(
                                course: course,
                              ))
                          .toList(),
                    ),
                  ),
              errorSendingCourseDetailRequest: (String error) => Text(error));
        },
      ),
    );
  }
}
