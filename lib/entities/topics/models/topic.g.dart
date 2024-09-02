// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      title: json['title'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
      subTopics: (json['subTopics'] as List<dynamic>)
          .map((e) => SubTopics.fromJson(e as Map<String, dynamic>))
          .toList(),
      instructors: (json['instructors'] as List<dynamic>)
          .map((e) => Instructors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
      'subTopics': instance.subTopics,
      'instructors': instance.instructors,
    };

_$SubTopicsImpl _$$SubTopicsImplFromJson(Map<String, dynamic> json) =>
    _$SubTopicsImpl(
      id: (json['id'] as num).toInt(),
      subTopicTitle: json['subTopicTitle'] as String,
    );

Map<String, dynamic> _$$SubTopicsImplToJson(_$SubTopicsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subTopicTitle': instance.subTopicTitle,
    };

_$InstructorsImpl _$$InstructorsImplFromJson(Map<String, dynamic> json) =>
    _$InstructorsImpl(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$$InstructorsImplToJson(_$InstructorsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
