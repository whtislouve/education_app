part of 'course_bloc.dart';

@freezed
class CourseEvents with _$CourseEvents {
  const factory CourseEvents.getCourseDetailData() = GetCourseDetailData;
  const factory CourseEvents.getPopularCoursesData() = GetPopularCoursesData;
}
