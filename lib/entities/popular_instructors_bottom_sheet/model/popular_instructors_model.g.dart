// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_instructors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularInstructorsModelImpl _$$PopularInstructorsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularInstructorsModelImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      instructorTopics: json['instructorTopics'] as String,
      studentsAmount: (json['studentsAmount'] as num).toInt(),
      coursesAmount: (json['coursesAmount'] as num).toInt(),
    );

Map<String, dynamic> _$$PopularInstructorsModelImplToJson(
        _$PopularInstructorsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'instructorTopics': instance.instructorTopics,
      'studentsAmount': instance.studentsAmount,
      'coursesAmount': instance.coursesAmount,
    };
