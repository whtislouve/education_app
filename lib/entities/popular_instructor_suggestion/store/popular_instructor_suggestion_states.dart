part of "popular_instructor_suggestion_bloc.dart";

@freezed
class PopularInstructorSuggestionStates
    with _$PopularInstructorSuggestionStates {
  const factory PopularInstructorSuggestionStates.initialState() =
      _InitialInstructorSuggestionState;
  const factory PopularInstructorSuggestionStates.acceptingInstructorSuggestionData(
          {required List<CourseModel> instructorsCoursesList}) =
      _AcceptingInstructorSuggestionDataState;
  const factory PopularInstructorSuggestionStates.errorSendingInstructorSuggestionRequest(
          {required String errorText}) =
      _ErrorSendingInstructorSuggestionRequestState;
}
