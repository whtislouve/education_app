import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:education_app/entities/all_topics_bottom_sheet/models/topic.dart';

part 'course_model.g.dart';
part 'course_model.freezed.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String title,
    required String totalLessonsTime,
    required int lessonsAmount,
    required String description,
    required int coursePrice,
    required String courseImageName,
    required CourseOverview courseOverview,
    required Instructors instructor,
    required List<CourseReviews> reviews,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);
}

@freezed
class CourseOverview with _$CourseOverview {
  const factory CourseOverview({
    required String courseId,
    required int hoursOnDemandVideo,
    required int articlesAmount,
    required int amountResources,
    required bool anyTimeAccess,
    required bool accessMobileTV,
    required bool certificatePresence,
    required int studentsAmount,
  }) = _CourseOverview;
  factory CourseOverview.fromJson(Map<String, dynamic> json) =>
      _$CourseOverviewFromJson(json);
}

@freezed
class CourseReviews with _$CourseReviews {
  const factory CourseReviews({
    required int reviewId,
    required String courseId,
    required String userFirstName,
    required String userLastName,
    required String timestamp,
    required String reviewText,
    required int reviewMark,
  }) = _CourseReviews;

  factory CourseReviews.fromJson(Map<String, dynamic> json) =>
      _$CourseReviewsFromJson(json);
}
