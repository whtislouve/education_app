// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Topic _$TopicFromJson(Map<String, dynamic> json) {
  return _Topic.fromJson(json);
}

/// @nodoc
mixin _$Topic {
  String get title => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;
  List<SubTopics> get subTopics => throw _privateConstructorUsedError;
  List<Instructors> get instructors => throw _privateConstructorUsedError;
  List<CourseModel> get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicCopyWith<Topic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicCopyWith<$Res> {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) then) =
      _$TopicCopyWithImpl<$Res, Topic>;
  @useResult
  $Res call(
      {String title,
      String shortDescription,
      String fullDescription,
      List<SubTopics> subTopics,
      List<Instructors> instructors,
      List<CourseModel> courses});
}

/// @nodoc
class _$TopicCopyWithImpl<$Res, $Val extends Topic>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? subTopics = null,
    Object? instructors = null,
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      subTopics: null == subTopics
          ? _value.subTopics
          : subTopics // ignore: cast_nullable_to_non_nullable
              as List<SubTopics>,
      instructors: null == instructors
          ? _value.instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<Instructors>,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicImplCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$$TopicImplCopyWith(
          _$TopicImpl value, $Res Function(_$TopicImpl) then) =
      __$$TopicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String shortDescription,
      String fullDescription,
      List<SubTopics> subTopics,
      List<Instructors> instructors,
      List<CourseModel> courses});
}

/// @nodoc
class __$$TopicImplCopyWithImpl<$Res>
    extends _$TopicCopyWithImpl<$Res, _$TopicImpl>
    implements _$$TopicImplCopyWith<$Res> {
  __$$TopicImplCopyWithImpl(
      _$TopicImpl _value, $Res Function(_$TopicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
    Object? subTopics = null,
    Object? instructors = null,
    Object? courses = null,
  }) {
    return _then(_$TopicImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
      subTopics: null == subTopics
          ? _value._subTopics
          : subTopics // ignore: cast_nullable_to_non_nullable
              as List<SubTopics>,
      instructors: null == instructors
          ? _value._instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<Instructors>,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicImpl with DiagnosticableTreeMixin implements _Topic {
  const _$TopicImpl(
      {required this.title,
      required this.shortDescription,
      required this.fullDescription,
      required final List<SubTopics> subTopics,
      required final List<Instructors> instructors,
      required final List<CourseModel> courses})
      : _subTopics = subTopics,
        _instructors = instructors,
        _courses = courses;

  factory _$TopicImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicImplFromJson(json);

  @override
  final String title;
  @override
  final String shortDescription;
  @override
  final String fullDescription;
  final List<SubTopics> _subTopics;
  @override
  List<SubTopics> get subTopics {
    if (_subTopics is EqualUnmodifiableListView) return _subTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTopics);
  }

  final List<Instructors> _instructors;
  @override
  List<Instructors> get instructors {
    if (_instructors is EqualUnmodifiableListView) return _instructors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructors);
  }

  final List<CourseModel> _courses;
  @override
  List<CourseModel> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Topic(title: $title, shortDescription: $shortDescription, fullDescription: $fullDescription, subTopics: $subTopics, instructors: $instructors, courses: $courses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Topic'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('fullDescription', fullDescription))
      ..add(DiagnosticsProperty('subTopics', subTopics))
      ..add(DiagnosticsProperty('instructors', instructors))
      ..add(DiagnosticsProperty('courses', courses));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription) &&
            const DeepCollectionEquality()
                .equals(other._subTopics, _subTopics) &&
            const DeepCollectionEquality()
                .equals(other._instructors, _instructors) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      shortDescription,
      fullDescription,
      const DeepCollectionEquality().hash(_subTopics),
      const DeepCollectionEquality().hash(_instructors),
      const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      __$$TopicImplCopyWithImpl<_$TopicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicImplToJson(
      this,
    );
  }
}

abstract class _Topic implements Topic {
  const factory _Topic(
      {required final String title,
      required final String shortDescription,
      required final String fullDescription,
      required final List<SubTopics> subTopics,
      required final List<Instructors> instructors,
      required final List<CourseModel> courses}) = _$TopicImpl;

  factory _Topic.fromJson(Map<String, dynamic> json) = _$TopicImpl.fromJson;

  @override
  String get title;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  List<SubTopics> get subTopics;
  @override
  List<Instructors> get instructors;
  @override
  List<CourseModel> get courses;
  @override
  @JsonKey(ignore: true)
  _$$TopicImplCopyWith<_$TopicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubTopics _$SubTopicsFromJson(Map<String, dynamic> json) {
  return _SubTopics.fromJson(json);
}

/// @nodoc
mixin _$SubTopics {
  int get id => throw _privateConstructorUsedError;
  String get subTopicTitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubTopicsCopyWith<SubTopics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTopicsCopyWith<$Res> {
  factory $SubTopicsCopyWith(SubTopics value, $Res Function(SubTopics) then) =
      _$SubTopicsCopyWithImpl<$Res, SubTopics>;
  @useResult
  $Res call({int id, String subTopicTitle});
}

/// @nodoc
class _$SubTopicsCopyWithImpl<$Res, $Val extends SubTopics>
    implements $SubTopicsCopyWith<$Res> {
  _$SubTopicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subTopicTitle = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subTopicTitle: null == subTopicTitle
          ? _value.subTopicTitle
          : subTopicTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubTopicsImplCopyWith<$Res>
    implements $SubTopicsCopyWith<$Res> {
  factory _$$SubTopicsImplCopyWith(
          _$SubTopicsImpl value, $Res Function(_$SubTopicsImpl) then) =
      __$$SubTopicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String subTopicTitle});
}

/// @nodoc
class __$$SubTopicsImplCopyWithImpl<$Res>
    extends _$SubTopicsCopyWithImpl<$Res, _$SubTopicsImpl>
    implements _$$SubTopicsImplCopyWith<$Res> {
  __$$SubTopicsImplCopyWithImpl(
      _$SubTopicsImpl _value, $Res Function(_$SubTopicsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subTopicTitle = null,
  }) {
    return _then(_$SubTopicsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subTopicTitle: null == subTopicTitle
          ? _value.subTopicTitle
          : subTopicTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubTopicsImpl with DiagnosticableTreeMixin implements _SubTopics {
  const _$SubTopicsImpl({required this.id, required this.subTopicTitle});

  factory _$SubTopicsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubTopicsImplFromJson(json);

  @override
  final int id;
  @override
  final String subTopicTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubTopics(id: $id, subTopicTitle: $subTopicTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubTopics'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('subTopicTitle', subTopicTitle));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTopicsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subTopicTitle, subTopicTitle) ||
                other.subTopicTitle == subTopicTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, subTopicTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTopicsImplCopyWith<_$SubTopicsImpl> get copyWith =>
      __$$SubTopicsImplCopyWithImpl<_$SubTopicsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubTopicsImplToJson(
      this,
    );
  }
}

abstract class _SubTopics implements SubTopics {
  const factory _SubTopics(
      {required final int id,
      required final String subTopicTitle}) = _$SubTopicsImpl;

  factory _SubTopics.fromJson(Map<String, dynamic> json) =
      _$SubTopicsImpl.fromJson;

  @override
  int get id;
  @override
  String get subTopicTitle;
  @override
  @JsonKey(ignore: true)
  _$$SubTopicsImplCopyWith<_$SubTopicsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Instructors _$InstructorsFromJson(Map<String, dynamic> json) {
  return _Instructors.fromJson(json);
}

/// @nodoc
mixin _$Instructors {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get instructorTopics => throw _privateConstructorUsedError;
  int get studentsAmount => throw _privateConstructorUsedError;
  int get coursesAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstructorsCopyWith<Instructors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructorsCopyWith<$Res> {
  factory $InstructorsCopyWith(
          Instructors value, $Res Function(Instructors) then) =
      _$InstructorsCopyWithImpl<$Res, Instructors>;
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String instructorTopics,
      int studentsAmount,
      int coursesAmount});
}

/// @nodoc
class _$InstructorsCopyWithImpl<$Res, $Val extends Instructors>
    implements $InstructorsCopyWith<$Res> {
  _$InstructorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? instructorTopics = null,
    Object? studentsAmount = null,
    Object? coursesAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      instructorTopics: null == instructorTopics
          ? _value.instructorTopics
          : instructorTopics // ignore: cast_nullable_to_non_nullable
              as String,
      studentsAmount: null == studentsAmount
          ? _value.studentsAmount
          : studentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      coursesAmount: null == coursesAmount
          ? _value.coursesAmount
          : coursesAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructorsImplCopyWith<$Res>
    implements $InstructorsCopyWith<$Res> {
  factory _$$InstructorsImplCopyWith(
          _$InstructorsImpl value, $Res Function(_$InstructorsImpl) then) =
      __$$InstructorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String firstName,
      String lastName,
      String instructorTopics,
      int studentsAmount,
      int coursesAmount});
}

/// @nodoc
class __$$InstructorsImplCopyWithImpl<$Res>
    extends _$InstructorsCopyWithImpl<$Res, _$InstructorsImpl>
    implements _$$InstructorsImplCopyWith<$Res> {
  __$$InstructorsImplCopyWithImpl(
      _$InstructorsImpl _value, $Res Function(_$InstructorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? instructorTopics = null,
    Object? studentsAmount = null,
    Object? coursesAmount = null,
  }) {
    return _then(_$InstructorsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      instructorTopics: null == instructorTopics
          ? _value.instructorTopics
          : instructorTopics // ignore: cast_nullable_to_non_nullable
              as String,
      studentsAmount: null == studentsAmount
          ? _value.studentsAmount
          : studentsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      coursesAmount: null == coursesAmount
          ? _value.coursesAmount
          : coursesAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructorsImpl with DiagnosticableTreeMixin implements _Instructors {
  const _$InstructorsImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.instructorTopics,
      required this.studentsAmount,
      required this.coursesAmount});

  factory _$InstructorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructorsImplFromJson(json);

  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String instructorTopics;
  @override
  final int studentsAmount;
  @override
  final int coursesAmount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Instructors(id: $id, firstName: $firstName, lastName: $lastName, instructorTopics: $instructorTopics, studentsAmount: $studentsAmount, coursesAmount: $coursesAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Instructors'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('instructorTopics', instructorTopics))
      ..add(DiagnosticsProperty('studentsAmount', studentsAmount))
      ..add(DiagnosticsProperty('coursesAmount', coursesAmount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructorsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.instructorTopics, instructorTopics) ||
                other.instructorTopics == instructorTopics) &&
            (identical(other.studentsAmount, studentsAmount) ||
                other.studentsAmount == studentsAmount) &&
            (identical(other.coursesAmount, coursesAmount) ||
                other.coursesAmount == coursesAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      instructorTopics, studentsAmount, coursesAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructorsImplCopyWith<_$InstructorsImpl> get copyWith =>
      __$$InstructorsImplCopyWithImpl<_$InstructorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructorsImplToJson(
      this,
    );
  }
}

abstract class _Instructors implements Instructors {
  const factory _Instructors(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String instructorTopics,
      required final int studentsAmount,
      required final int coursesAmount}) = _$InstructorsImpl;

  factory _Instructors.fromJson(Map<String, dynamic> json) =
      _$InstructorsImpl.fromJson;

  @override
  int get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get instructorTopics;
  @override
  int get studentsAmount;
  @override
  int get coursesAmount;
  @override
  @JsonKey(ignore: true)
  _$$InstructorsImplCopyWith<_$InstructorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
