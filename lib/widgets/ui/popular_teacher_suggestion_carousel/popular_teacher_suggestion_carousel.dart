import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/entities/course/models/course_model.dart';
import 'package:travel_app/entities/popular_instructor_suggestion/api/popular_instructor_suggestion_repository.dart';
import 'package:travel_app/entities/popular_instructor_suggestion/store/popular_instructor_suggestion_bloc.dart';
import 'package:travel_app/entities/popular_instructor_suggestion/ui/popular_instructor_suggestion_card_shimmer.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/entities/popular_instructor_suggestion/ui/popular_instructor_suggestion_card.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularInstructorSuggestionCarousel extends StatelessWidget {
  PopularInstructorSuggestionCarousel({super.key});
  PopularInstructorSuggestionRepository repository =
      PopularInstructorSuggestionRepository();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;

    return BlocProvider(
      create: (_) => PopularInstructorSuggestionBloc(repository: repository)
        ..add(const PopularInstructorSuggestionEvents
            .getPopularInstructorsSuggestionData()),
      child: BlocBuilder<PopularInstructorSuggestionBloc,
          PopularInstructorSuggestionStates>(
        builder: (context, state) {
          return state.when(
              initialState: () =>
                  const PopularInstructorSuggestionCardShimmer(),
              acceptingInstructorSuggestionData: (List<CourseModel> courses) =>
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: courses
                            .map((course) => PopularInstructorSuggestionCard(
                                  popularInstructorCourse: course,
                                ))
                            .toList()),
                  ),
              errorSendingInstructorSuggestionRequest: (String error) =>
                  Text(error));
        },
      ),
    );
  }
}
