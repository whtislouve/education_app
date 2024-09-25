part of 'course_bloc.dart';

@freezed
class CourseStates with _$CourseStates {
  const factory CourseStates.initialState() = _InitialCourseState;
  const factory CourseStates.acceptingCourseDetailData(
      {required List<CourseModel> courseDetails}) = _AcceptingCourseDetailState;
  const factory CourseStates.errorSendingCourseDetailRequest(
      {required String error}) = _ErrorSedingCourseDetailRequestState;
}
