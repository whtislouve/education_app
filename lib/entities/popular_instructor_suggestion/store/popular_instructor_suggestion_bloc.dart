import "package:flutter_bloc/flutter_bloc.dart";
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/entities/popular_instructor_suggestion/api/popular_instructor_suggestion_repository.dart';

part 'popular_instructor_suggestion_states.dart';
part 'popular_instructor_suggestion_events.dart';
part 'popular_instructor_suggestion_bloc.freezed.dart';

class PopularInstructorSuggestionBloc extends Bloc<
    PopularInstructorSuggestionEvents, PopularInstructorSuggestionStates> {
  PopularInstructorSuggestionRepository repository;
  List<CourseModel> popularInstructorsCoursesList = [];
  PopularInstructorSuggestionBloc({
    required this.repository,
  }) : super(const PopularInstructorSuggestionStates.initialState()) {
    on<PopularInstructorSuggestionEvents>((event, emit) async {
      await event.map(
          getPopularInstructorsSuggestionData: (_) async =>
              await getPopularInstructorsCourses(emit));
    });
  }

  Future getPopularInstructorsCourses(
      Emitter<PopularInstructorSuggestionStates> emit) async {
    await repository.getPopularInstructorSuggestionData();
    _transformFromResponseToModel(emit);
  }

  void _transformFromResponseToModel(
      Emitter<PopularInstructorSuggestionStates> emit) {
    if (repository.responseModel.errorText == "") {
      repository.responseModel.responseData['detailCourse']
          .forEach((course) => {
                popularInstructorsCoursesList.add(CourseModel.fromJson({
                  "id": course["id"],
                  "title": course["title"],
                  "totalLessonsTime": course["totalLessonsTime"],
                  "lessonsAmount": course["lessonsAmount"],
                  "description": course["description"],
                  "coursePrice": course["coursePrice"],
                  "courseImageName": course["courseImageName"],
                  "courseOverview": course["courseOverview"],
                  "instructor": course["instructor"],
                  "reviews": course["reviews"],
                }))
              });
      emit(PopularInstructorSuggestionStates.acceptingInstructorSuggestionData(
          instructorsCoursesList: popularInstructorsCoursesList));
    } else {
      emit(PopularInstructorSuggestionStates
          .errorSendingInstructorSuggestionRequest(
              errorText: repository.responseModel.errorText));
    }
  }
}
