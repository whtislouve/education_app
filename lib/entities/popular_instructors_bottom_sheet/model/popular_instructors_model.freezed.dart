// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_instructors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PopularInstructorsModel _$PopularInstructorsModelFromJson(
    Map<String, dynamic> json) {
  return _PopularInstructorsModel.fromJson(json);
}

/// @nodoc
mixin _$PopularInstructorsModel {
  int get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get instructorTopics => throw _privateConstructorUsedError;
  int get studentsAmount => throw _privateConstructorUsedError;
  int get coursesAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularInstructorsModelCopyWith<PopularInstructorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularInstructorsModelCopyWith<$Res> {
  factory $PopularInstructorsModelCopyWith(PopularInstructorsModel value,
          $Res Function(PopularInstructorsModel) then) =
      _$PopularInstructorsModelCopyWithImpl<$Res, PopularInstructorsModel>;
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
class _$PopularInstructorsModelCopyWithImpl<$Res,
        $Val extends PopularInstructorsModel>
    implements $PopularInstructorsModelCopyWith<$Res> {
  _$PopularInstructorsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PopularInstructorsModelImplCopyWith<$Res>
    implements $PopularInstructorsModelCopyWith<$Res> {
  factory _$$PopularInstructorsModelImplCopyWith(
          _$PopularInstructorsModelImpl value,
          $Res Function(_$PopularInstructorsModelImpl) then) =
      __$$PopularInstructorsModelImplCopyWithImpl<$Res>;
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
class __$$PopularInstructorsModelImplCopyWithImpl<$Res>
    extends _$PopularInstructorsModelCopyWithImpl<$Res,
        _$PopularInstructorsModelImpl>
    implements _$$PopularInstructorsModelImplCopyWith<$Res> {
  __$$PopularInstructorsModelImplCopyWithImpl(
      _$PopularInstructorsModelImpl _value,
      $Res Function(_$PopularInstructorsModelImpl) _then)
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
    return _then(_$PopularInstructorsModelImpl(
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
class _$PopularInstructorsModelImpl
    with DiagnosticableTreeMixin
    implements _PopularInstructorsModel {
  const _$PopularInstructorsModelImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.instructorTopics,
      required this.studentsAmount,
      required this.coursesAmount});

  factory _$PopularInstructorsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularInstructorsModelImplFromJson(json);

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
    return 'PopularInstructorsModel(id: $id, firstName: $firstName, lastName: $lastName, instructorTopics: $instructorTopics, studentsAmount: $studentsAmount, coursesAmount: $coursesAmount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PopularInstructorsModel'))
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
            other is _$PopularInstructorsModelImpl &&
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
  _$$PopularInstructorsModelImplCopyWith<_$PopularInstructorsModelImpl>
      get copyWith => __$$PopularInstructorsModelImplCopyWithImpl<
          _$PopularInstructorsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularInstructorsModelImplToJson(
      this,
    );
  }
}

abstract class _PopularInstructorsModel implements PopularInstructorsModel {
  const factory _PopularInstructorsModel(
      {required final int id,
      required final String firstName,
      required final String lastName,
      required final String instructorTopics,
      required final int studentsAmount,
      required final int coursesAmount}) = _$PopularInstructorsModelImpl;

  factory _PopularInstructorsModel.fromJson(Map<String, dynamic> json) =
      _$PopularInstructorsModelImpl.fromJson;

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
  _$$PopularInstructorsModelImplCopyWith<_$PopularInstructorsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
