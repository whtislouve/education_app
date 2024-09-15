import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_instructors_model.g.dart';
part 'popular_instructors_model.freezed.dart';

@freezed
class PopularInstructorsModel with _$PopularInstructorsModel {
  const factory PopularInstructorsModel({
    required int id,
    required String firstName,
    required String lastName,
    required String instructorTopics,
    required int studentsAmount,
    required int coursesAmount,
  }) = _PopularInstructorsModel;

  factory PopularInstructorsModel.fromJson(Map<String, dynamic> json) =>
      _$PopularInstructorsModelFromJson(json);
}
