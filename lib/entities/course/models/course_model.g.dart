// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseModelImpl _$$CourseModelImplFromJson(Map<String, dynamic> json) =>
    _$CourseModelImpl(
      title: json['title'] as String,
      totalLessonsTime: json['totalLessonsTime'] as String,
      lessonsAmount: (json['lessonsAmount'] as num).toInt(),
      description: json['description'] as String,
      coursePrice: (json['coursePrice'] as num).toInt(),
      courseImageName: json['courseImageName'] as String,
      courseOverview: CourseOverview.fromJson(
          json['courseOverview'] as Map<String, dynamic>),
      instructor:
          Instructors.fromJson(json['instructor'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => CourseReviews.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseModelImplToJson(_$CourseModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'totalLessonsTime': instance.totalLessonsTime,
      'lessonsAmount': instance.lessonsAmount,
      'description': instance.description,
      'coursePrice': instance.coursePrice,
      'courseImageName': instance.courseImageName,
      'courseOverview': instance.courseOverview,
      'instructor': instance.instructor,
      'reviews': instance.reviews,
    };

_$CourseOverviewImpl _$$CourseOverviewImplFromJson(Map<String, dynamic> json) =>
    _$CourseOverviewImpl(
      hoursOnDemandVideo: (json['hoursOnDemandVideo'] as num).toInt(),
      articlesAmount: (json['articlesAmount'] as num).toInt(),
      amountResources: (json['amountResources'] as num).toInt(),
      anyTimeAccess: json['anyTimeAccess'] as bool,
      accessMobileTV: json['accessMobileTV'] as bool,
      certificatePresence: json['certificatePresence'] as bool,
      studentsAmount: (json['studentsAmount'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseOverviewImplToJson(
        _$CourseOverviewImpl instance) =>
    <String, dynamic>{
      'hoursOnDemandVideo': instance.hoursOnDemandVideo,
      'articlesAmount': instance.articlesAmount,
      'amountResources': instance.amountResources,
      'anyTimeAccess': instance.anyTimeAccess,
      'accessMobileTV': instance.accessMobileTV,
      'certificatePresence': instance.certificatePresence,
      'studentsAmount': instance.studentsAmount,
    };

_$CourseReviewsImpl _$$CourseReviewsImplFromJson(Map<String, dynamic> json) =>
    _$CourseReviewsImpl(
      reviewId: (json['reviewId'] as num).toInt(),
      userFirstName: json['userFirstName'] as String,
      userLastName: json['userLastName'] as String,
      timestamp: json['timestamp'] as String,
      reviewText: json['reviewText'] as String,
      reviewMark: (json['reviewMark'] as num).toInt(),
    );

Map<String, dynamic> _$$CourseReviewsImplToJson(_$CourseReviewsImpl instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'timestamp': instance.timestamp,
      'reviewText': instance.reviewText,
      'reviewMark': instance.reviewMark,
    };
