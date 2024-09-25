// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourseEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourseDetailData,
    required TResult Function() getPopularCoursesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCourseDetailData,
    TResult? Function()? getPopularCoursesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourseDetailData,
    TResult Function()? getPopularCoursesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCourseDetailData value) getCourseDetailData,
    required TResult Function(GetPopularCoursesData value)
        getPopularCoursesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCourseDetailData value)? getCourseDetailData,
    TResult? Function(GetPopularCoursesData value)? getPopularCoursesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCourseDetailData value)? getCourseDetailData,
    TResult Function(GetPopularCoursesData value)? getPopularCoursesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventsCopyWith<$Res> {
  factory $CourseEventsCopyWith(
          CourseEvents value, $Res Function(CourseEvents) then) =
      _$CourseEventsCopyWithImpl<$Res, CourseEvents>;
}

/// @nodoc
class _$CourseEventsCopyWithImpl<$Res, $Val extends CourseEvents>
    implements $CourseEventsCopyWith<$Res> {
  _$CourseEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCourseDetailDataImplCopyWith<$Res> {
  factory _$$GetCourseDetailDataImplCopyWith(_$GetCourseDetailDataImpl value,
          $Res Function(_$GetCourseDetailDataImpl) then) =
      __$$GetCourseDetailDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCourseDetailDataImplCopyWithImpl<$Res>
    extends _$CourseEventsCopyWithImpl<$Res, _$GetCourseDetailDataImpl>
    implements _$$GetCourseDetailDataImplCopyWith<$Res> {
  __$$GetCourseDetailDataImplCopyWithImpl(_$GetCourseDetailDataImpl _value,
      $Res Function(_$GetCourseDetailDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCourseDetailDataImpl
    with DiagnosticableTreeMixin
    implements GetCourseDetailData {
  const _$GetCourseDetailDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvents.getCourseDetailData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CourseEvents.getCourseDetailData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCourseDetailDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourseDetailData,
    required TResult Function() getPopularCoursesData,
  }) {
    return getCourseDetailData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCourseDetailData,
    TResult? Function()? getPopularCoursesData,
  }) {
    return getCourseDetailData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourseDetailData,
    TResult Function()? getPopularCoursesData,
    required TResult orElse(),
  }) {
    if (getCourseDetailData != null) {
      return getCourseDetailData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCourseDetailData value) getCourseDetailData,
    required TResult Function(GetPopularCoursesData value)
        getPopularCoursesData,
  }) {
    return getCourseDetailData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCourseDetailData value)? getCourseDetailData,
    TResult? Function(GetPopularCoursesData value)? getPopularCoursesData,
  }) {
    return getCourseDetailData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCourseDetailData value)? getCourseDetailData,
    TResult Function(GetPopularCoursesData value)? getPopularCoursesData,
    required TResult orElse(),
  }) {
    if (getCourseDetailData != null) {
      return getCourseDetailData(this);
    }
    return orElse();
  }
}

abstract class GetCourseDetailData implements CourseEvents {
  const factory GetCourseDetailData() = _$GetCourseDetailDataImpl;
}

/// @nodoc
abstract class _$$GetPopularCoursesDataImplCopyWith<$Res> {
  factory _$$GetPopularCoursesDataImplCopyWith(
          _$GetPopularCoursesDataImpl value,
          $Res Function(_$GetPopularCoursesDataImpl) then) =
      __$$GetPopularCoursesDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPopularCoursesDataImplCopyWithImpl<$Res>
    extends _$CourseEventsCopyWithImpl<$Res, _$GetPopularCoursesDataImpl>
    implements _$$GetPopularCoursesDataImplCopyWith<$Res> {
  __$$GetPopularCoursesDataImplCopyWithImpl(_$GetPopularCoursesDataImpl _value,
      $Res Function(_$GetPopularCoursesDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPopularCoursesDataImpl
    with DiagnosticableTreeMixin
    implements GetPopularCoursesData {
  const _$GetPopularCoursesDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseEvents.getPopularCoursesData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CourseEvents.getPopularCoursesData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPopularCoursesDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourseDetailData,
    required TResult Function() getPopularCoursesData,
  }) {
    return getPopularCoursesData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCourseDetailData,
    TResult? Function()? getPopularCoursesData,
  }) {
    return getPopularCoursesData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourseDetailData,
    TResult Function()? getPopularCoursesData,
    required TResult orElse(),
  }) {
    if (getPopularCoursesData != null) {
      return getPopularCoursesData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCourseDetailData value) getCourseDetailData,
    required TResult Function(GetPopularCoursesData value)
        getPopularCoursesData,
  }) {
    return getPopularCoursesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCourseDetailData value)? getCourseDetailData,
    TResult? Function(GetPopularCoursesData value)? getPopularCoursesData,
  }) {
    return getPopularCoursesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCourseDetailData value)? getCourseDetailData,
    TResult Function(GetPopularCoursesData value)? getPopularCoursesData,
    required TResult orElse(),
  }) {
    if (getPopularCoursesData != null) {
      return getPopularCoursesData(this);
    }
    return orElse();
  }
}

abstract class GetPopularCoursesData implements CourseEvents {
  const factory GetPopularCoursesData() = _$GetPopularCoursesDataImpl;
}

/// @nodoc
mixin _$CourseStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<CourseModel> courseDetails)
        acceptingCourseDetailData,
    required TResult Function(String error) errorSendingCourseDetailRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult? Function(String error)? errorSendingCourseDetailRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult Function(String error)? errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCourseState value) initialState,
    required TResult Function(_AcceptingCourseDetailState value)
        acceptingCourseDetailData,
    required TResult Function(_ErrorSedingCourseDetailRequestState value)
        errorSendingCourseDetailRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCourseState value)? initialState,
    TResult? Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult? Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCourseState value)? initialState,
    TResult Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStatesCopyWith<$Res> {
  factory $CourseStatesCopyWith(
          CourseStates value, $Res Function(CourseStates) then) =
      _$CourseStatesCopyWithImpl<$Res, CourseStates>;
}

/// @nodoc
class _$CourseStatesCopyWithImpl<$Res, $Val extends CourseStates>
    implements $CourseStatesCopyWith<$Res> {
  _$CourseStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCourseStateImplCopyWith<$Res> {
  factory _$$InitialCourseStateImplCopyWith(_$InitialCourseStateImpl value,
          $Res Function(_$InitialCourseStateImpl) then) =
      __$$InitialCourseStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCourseStateImplCopyWithImpl<$Res>
    extends _$CourseStatesCopyWithImpl<$Res, _$InitialCourseStateImpl>
    implements _$$InitialCourseStateImplCopyWith<$Res> {
  __$$InitialCourseStateImplCopyWithImpl(_$InitialCourseStateImpl _value,
      $Res Function(_$InitialCourseStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCourseStateImpl
    with DiagnosticableTreeMixin
    implements _InitialCourseState {
  const _$InitialCourseStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseStates.initialState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CourseStates.initialState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCourseStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<CourseModel> courseDetails)
        acceptingCourseDetailData,
    required TResult Function(String error) errorSendingCourseDetailRequest,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult? Function(String error)? errorSendingCourseDetailRequest,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult Function(String error)? errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCourseState value) initialState,
    required TResult Function(_AcceptingCourseDetailState value)
        acceptingCourseDetailData,
    required TResult Function(_ErrorSedingCourseDetailRequestState value)
        errorSendingCourseDetailRequest,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCourseState value)? initialState,
    TResult? Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult? Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCourseState value)? initialState,
    TResult Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialCourseState implements CourseStates {
  const factory _InitialCourseState() = _$InitialCourseStateImpl;
}

/// @nodoc
abstract class _$$AcceptingCourseDetailStateImplCopyWith<$Res> {
  factory _$$AcceptingCourseDetailStateImplCopyWith(
          _$AcceptingCourseDetailStateImpl value,
          $Res Function(_$AcceptingCourseDetailStateImpl) then) =
      __$$AcceptingCourseDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CourseModel> courseDetails});
}

/// @nodoc
class __$$AcceptingCourseDetailStateImplCopyWithImpl<$Res>
    extends _$CourseStatesCopyWithImpl<$Res, _$AcceptingCourseDetailStateImpl>
    implements _$$AcceptingCourseDetailStateImplCopyWith<$Res> {
  __$$AcceptingCourseDetailStateImplCopyWithImpl(
      _$AcceptingCourseDetailStateImpl _value,
      $Res Function(_$AcceptingCourseDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseDetails = null,
  }) {
    return _then(_$AcceptingCourseDetailStateImpl(
      courseDetails: null == courseDetails
          ? _value._courseDetails
          : courseDetails // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
    ));
  }
}

/// @nodoc

class _$AcceptingCourseDetailStateImpl
    with DiagnosticableTreeMixin
    implements _AcceptingCourseDetailState {
  const _$AcceptingCourseDetailStateImpl(
      {required final List<CourseModel> courseDetails})
      : _courseDetails = courseDetails;

  final List<CourseModel> _courseDetails;
  @override
  List<CourseModel> get courseDetails {
    if (_courseDetails is EqualUnmodifiableListView) return _courseDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courseDetails);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseStates.acceptingCourseDetailData(courseDetails: $courseDetails)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'CourseStates.acceptingCourseDetailData'))
      ..add(DiagnosticsProperty('courseDetails', courseDetails));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptingCourseDetailStateImpl &&
            const DeepCollectionEquality()
                .equals(other._courseDetails, _courseDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_courseDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptingCourseDetailStateImplCopyWith<_$AcceptingCourseDetailStateImpl>
      get copyWith => __$$AcceptingCourseDetailStateImplCopyWithImpl<
          _$AcceptingCourseDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<CourseModel> courseDetails)
        acceptingCourseDetailData,
    required TResult Function(String error) errorSendingCourseDetailRequest,
  }) {
    return acceptingCourseDetailData(courseDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult? Function(String error)? errorSendingCourseDetailRequest,
  }) {
    return acceptingCourseDetailData?.call(courseDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult Function(String error)? errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (acceptingCourseDetailData != null) {
      return acceptingCourseDetailData(courseDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCourseState value) initialState,
    required TResult Function(_AcceptingCourseDetailState value)
        acceptingCourseDetailData,
    required TResult Function(_ErrorSedingCourseDetailRequestState value)
        errorSendingCourseDetailRequest,
  }) {
    return acceptingCourseDetailData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCourseState value)? initialState,
    TResult? Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult? Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
  }) {
    return acceptingCourseDetailData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCourseState value)? initialState,
    TResult Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (acceptingCourseDetailData != null) {
      return acceptingCourseDetailData(this);
    }
    return orElse();
  }
}

abstract class _AcceptingCourseDetailState implements CourseStates {
  const factory _AcceptingCourseDetailState(
          {required final List<CourseModel> courseDetails}) =
      _$AcceptingCourseDetailStateImpl;

  List<CourseModel> get courseDetails;
  @JsonKey(ignore: true)
  _$$AcceptingCourseDetailStateImplCopyWith<_$AcceptingCourseDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSedingCourseDetailRequestStateImplCopyWith<$Res> {
  factory _$$ErrorSedingCourseDetailRequestStateImplCopyWith(
          _$ErrorSedingCourseDetailRequestStateImpl value,
          $Res Function(_$ErrorSedingCourseDetailRequestStateImpl) then) =
      __$$ErrorSedingCourseDetailRequestStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSedingCourseDetailRequestStateImplCopyWithImpl<$Res>
    extends _$CourseStatesCopyWithImpl<$Res,
        _$ErrorSedingCourseDetailRequestStateImpl>
    implements _$$ErrorSedingCourseDetailRequestStateImplCopyWith<$Res> {
  __$$ErrorSedingCourseDetailRequestStateImplCopyWithImpl(
      _$ErrorSedingCourseDetailRequestStateImpl _value,
      $Res Function(_$ErrorSedingCourseDetailRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSedingCourseDetailRequestStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSedingCourseDetailRequestStateImpl
    with DiagnosticableTreeMixin
    implements _ErrorSedingCourseDetailRequestState {
  const _$ErrorSedingCourseDetailRequestStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseStates.errorSendingCourseDetailRequest(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'CourseStates.errorSendingCourseDetailRequest'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSedingCourseDetailRequestStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSedingCourseDetailRequestStateImplCopyWith<
          _$ErrorSedingCourseDetailRequestStateImpl>
      get copyWith => __$$ErrorSedingCourseDetailRequestStateImplCopyWithImpl<
          _$ErrorSedingCourseDetailRequestStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<CourseModel> courseDetails)
        acceptingCourseDetailData,
    required TResult Function(String error) errorSendingCourseDetailRequest,
  }) {
    return errorSendingCourseDetailRequest(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult? Function(String error)? errorSendingCourseDetailRequest,
  }) {
    return errorSendingCourseDetailRequest?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<CourseModel> courseDetails)?
        acceptingCourseDetailData,
    TResult Function(String error)? errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (errorSendingCourseDetailRequest != null) {
      return errorSendingCourseDetailRequest(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCourseState value) initialState,
    required TResult Function(_AcceptingCourseDetailState value)
        acceptingCourseDetailData,
    required TResult Function(_ErrorSedingCourseDetailRequestState value)
        errorSendingCourseDetailRequest,
  }) {
    return errorSendingCourseDetailRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCourseState value)? initialState,
    TResult? Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult? Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
  }) {
    return errorSendingCourseDetailRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCourseState value)? initialState,
    TResult Function(_AcceptingCourseDetailState value)?
        acceptingCourseDetailData,
    TResult Function(_ErrorSedingCourseDetailRequestState value)?
        errorSendingCourseDetailRequest,
    required TResult orElse(),
  }) {
    if (errorSendingCourseDetailRequest != null) {
      return errorSendingCourseDetailRequest(this);
    }
    return orElse();
  }
}

abstract class _ErrorSedingCourseDetailRequestState implements CourseStates {
  const factory _ErrorSedingCourseDetailRequestState(
          {required final String error}) =
      _$ErrorSedingCourseDetailRequestStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSedingCourseDetailRequestStateImplCopyWith<
          _$ErrorSedingCourseDetailRequestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
