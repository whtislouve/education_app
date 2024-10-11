import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:education_app/entities/course/models/course_model.dart';

part 'topic.g.dart';
part 'topic.freezed.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required String title,
    required String shortDescription,
    required String fullDescription,
    required List<SubTopics> subTopics,
    required List<Instructors> instructors,
    required List<CourseModel> courses,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}

@freezed
class SubTopics with _$SubTopics {
  const factory SubTopics({
    required int id,
    required String subTopicTitle,
  }) = _SubTopics;

  factory SubTopics.fromJson(Map<String, dynamic> json) =>
      _$SubTopicsFromJson(json);
}

@freezed
class Instructors with _$Instructors {
  const factory Instructors({
    required int id,
    required String courseId,
    required String firstName,
    required String lastName,
    required String instructorTopics,
    required int studentsAmount,
    required int coursesAmount,
  }) = _Instructors;

  factory Instructors.fromJson(Map<String, dynamic> json) =>
      _$InstructorsFromJson(json);
}
