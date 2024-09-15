// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_instructors_bottom_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopularInstructorsBottomSheetEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() popularInstructorsButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? popularInstructorsButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? popularInstructorsButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularInstructorsButtonPressed value)
        popularInstructorsButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularInstructorsButtonPressed value)?
        popularInstructorsButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularInstructorsButtonPressed value)?
        popularInstructorsButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularInstructorsBottomSheetEventsCopyWith<$Res> {
  factory $PopularInstructorsBottomSheetEventsCopyWith(
          PopularInstructorsBottomSheetEvents value,
          $Res Function(PopularInstructorsBottomSheetEvents) then) =
      _$PopularInstructorsBottomSheetEventsCopyWithImpl<$Res,
          PopularInstructorsBottomSheetEvents>;
}

/// @nodoc
class _$PopularInstructorsBottomSheetEventsCopyWithImpl<$Res,
        $Val extends PopularInstructorsBottomSheetEvents>
    implements $PopularInstructorsBottomSheetEventsCopyWith<$Res> {
  _$PopularInstructorsBottomSheetEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PopularInstructorsButtonPressedImplCopyWith<$Res> {
  factory _$$PopularInstructorsButtonPressedImplCopyWith(
          _$PopularInstructorsButtonPressedImpl value,
          $Res Function(_$PopularInstructorsButtonPressedImpl) then) =
      __$$PopularInstructorsButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopularInstructorsButtonPressedImplCopyWithImpl<$Res>
    extends _$PopularInstructorsBottomSheetEventsCopyWithImpl<$Res,
        _$PopularInstructorsButtonPressedImpl>
    implements _$$PopularInstructorsButtonPressedImplCopyWith<$Res> {
  __$$PopularInstructorsButtonPressedImplCopyWithImpl(
      _$PopularInstructorsButtonPressedImpl _value,
      $Res Function(_$PopularInstructorsButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PopularInstructorsButtonPressedImpl
    implements PopularInstructorsButtonPressed {
  const _$PopularInstructorsButtonPressedImpl();

  @override
  String toString() {
    return 'PopularInstructorsBottomSheetEvents.popularInstructorsButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularInstructorsButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() popularInstructorsButtonPressed,
  }) {
    return popularInstructorsButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? popularInstructorsButtonPressed,
  }) {
    return popularInstructorsButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? popularInstructorsButtonPressed,
    required TResult orElse(),
  }) {
    if (popularInstructorsButtonPressed != null) {
      return popularInstructorsButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PopularInstructorsButtonPressed value)
        popularInstructorsButtonPressed,
  }) {
    return popularInstructorsButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PopularInstructorsButtonPressed value)?
        popularInstructorsButtonPressed,
  }) {
    return popularInstructorsButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PopularInstructorsButtonPressed value)?
        popularInstructorsButtonPressed,
    required TResult orElse(),
  }) {
    if (popularInstructorsButtonPressed != null) {
      return popularInstructorsButtonPressed(this);
    }
    return orElse();
  }
}

abstract class PopularInstructorsButtonPressed
    implements PopularInstructorsBottomSheetEvents {
  const factory PopularInstructorsButtonPressed() =
      _$PopularInstructorsButtonPressedImpl;
}

/// @nodoc
mixin _$PopularInstructorsBottomSheetStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<PopularInstructorsModel> instructors)
        acceptingPopularInstructorsData,
    required TResult Function(String error) errorSendingRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult? Function(String error)? errorSendingRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult Function(String error)? errorSendingRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntitalStatePopularInstructorsBottomSheet value)
        initialState,
    required TResult Function(_AcceptingPopularInstructorsBottomSheetData value)
        acceptingPopularInstructorsData,
    required TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)
        errorSendingRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult? Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult? Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularInstructorsBottomSheetStatesCopyWith<$Res> {
  factory $PopularInstructorsBottomSheetStatesCopyWith(
          PopularInstructorsBottomSheetStates value,
          $Res Function(PopularInstructorsBottomSheetStates) then) =
      _$PopularInstructorsBottomSheetStatesCopyWithImpl<$Res,
          PopularInstructorsBottomSheetStates>;
}

/// @nodoc
class _$PopularInstructorsBottomSheetStatesCopyWithImpl<$Res,
        $Val extends PopularInstructorsBottomSheetStates>
    implements $PopularInstructorsBottomSheetStatesCopyWith<$Res> {
  _$PopularInstructorsBottomSheetStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IntitalStatePopularInstructorsBottomSheetImplCopyWith<$Res> {
  factory _$$IntitalStatePopularInstructorsBottomSheetImplCopyWith(
          _$IntitalStatePopularInstructorsBottomSheetImpl value,
          $Res Function(_$IntitalStatePopularInstructorsBottomSheetImpl) then) =
      __$$IntitalStatePopularInstructorsBottomSheetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntitalStatePopularInstructorsBottomSheetImplCopyWithImpl<$Res>
    extends _$PopularInstructorsBottomSheetStatesCopyWithImpl<$Res,
        _$IntitalStatePopularInstructorsBottomSheetImpl>
    implements _$$IntitalStatePopularInstructorsBottomSheetImplCopyWith<$Res> {
  __$$IntitalStatePopularInstructorsBottomSheetImplCopyWithImpl(
      _$IntitalStatePopularInstructorsBottomSheetImpl _value,
      $Res Function(_$IntitalStatePopularInstructorsBottomSheetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntitalStatePopularInstructorsBottomSheetImpl
    implements _IntitalStatePopularInstructorsBottomSheet {
  const _$IntitalStatePopularInstructorsBottomSheetImpl();

  @override
  String toString() {
    return 'PopularInstructorsBottomSheetStates.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntitalStatePopularInstructorsBottomSheetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<PopularInstructorsModel> instructors)
        acceptingPopularInstructorsData,
    required TResult Function(String error) errorSendingRequest,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult? Function(String error)? errorSendingRequest,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult Function(String error)? errorSendingRequest,
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
    required TResult Function(_IntitalStatePopularInstructorsBottomSheet value)
        initialState,
    required TResult Function(_AcceptingPopularInstructorsBottomSheetData value)
        acceptingPopularInstructorsData,
    required TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)
        errorSendingRequest,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult? Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult? Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _IntitalStatePopularInstructorsBottomSheet
    implements PopularInstructorsBottomSheetStates {
  const factory _IntitalStatePopularInstructorsBottomSheet() =
      _$IntitalStatePopularInstructorsBottomSheetImpl;
}

/// @nodoc
abstract class _$$AcceptingPopularInstructorsBottomSheetDataImplCopyWith<$Res> {
  factory _$$AcceptingPopularInstructorsBottomSheetDataImplCopyWith(
          _$AcceptingPopularInstructorsBottomSheetDataImpl value,
          $Res Function(_$AcceptingPopularInstructorsBottomSheetDataImpl)
              then) =
      __$$AcceptingPopularInstructorsBottomSheetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PopularInstructorsModel> instructors});
}

/// @nodoc
class __$$AcceptingPopularInstructorsBottomSheetDataImplCopyWithImpl<$Res>
    extends _$PopularInstructorsBottomSheetStatesCopyWithImpl<$Res,
        _$AcceptingPopularInstructorsBottomSheetDataImpl>
    implements _$$AcceptingPopularInstructorsBottomSheetDataImplCopyWith<$Res> {
  __$$AcceptingPopularInstructorsBottomSheetDataImplCopyWithImpl(
      _$AcceptingPopularInstructorsBottomSheetDataImpl _value,
      $Res Function(_$AcceptingPopularInstructorsBottomSheetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructors = null,
  }) {
    return _then(_$AcceptingPopularInstructorsBottomSheetDataImpl(
      instructors: null == instructors
          ? _value._instructors
          : instructors // ignore: cast_nullable_to_non_nullable
              as List<PopularInstructorsModel>,
    ));
  }
}

/// @nodoc

class _$AcceptingPopularInstructorsBottomSheetDataImpl
    implements _AcceptingPopularInstructorsBottomSheetData {
  const _$AcceptingPopularInstructorsBottomSheetDataImpl(
      {required final List<PopularInstructorsModel> instructors})
      : _instructors = instructors;

  final List<PopularInstructorsModel> _instructors;
  @override
  List<PopularInstructorsModel> get instructors {
    if (_instructors is EqualUnmodifiableListView) return _instructors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructors);
  }

  @override
  String toString() {
    return 'PopularInstructorsBottomSheetStates.acceptingPopularInstructorsData(instructors: $instructors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptingPopularInstructorsBottomSheetDataImpl &&
            const DeepCollectionEquality()
                .equals(other._instructors, _instructors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_instructors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptingPopularInstructorsBottomSheetDataImplCopyWith<
          _$AcceptingPopularInstructorsBottomSheetDataImpl>
      get copyWith =>
          __$$AcceptingPopularInstructorsBottomSheetDataImplCopyWithImpl<
                  _$AcceptingPopularInstructorsBottomSheetDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<PopularInstructorsModel> instructors)
        acceptingPopularInstructorsData,
    required TResult Function(String error) errorSendingRequest,
  }) {
    return acceptingPopularInstructorsData(instructors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult? Function(String error)? errorSendingRequest,
  }) {
    return acceptingPopularInstructorsData?.call(instructors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult Function(String error)? errorSendingRequest,
    required TResult orElse(),
  }) {
    if (acceptingPopularInstructorsData != null) {
      return acceptingPopularInstructorsData(instructors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntitalStatePopularInstructorsBottomSheet value)
        initialState,
    required TResult Function(_AcceptingPopularInstructorsBottomSheetData value)
        acceptingPopularInstructorsData,
    required TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)
        errorSendingRequest,
  }) {
    return acceptingPopularInstructorsData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult? Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult? Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
  }) {
    return acceptingPopularInstructorsData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
    required TResult orElse(),
  }) {
    if (acceptingPopularInstructorsData != null) {
      return acceptingPopularInstructorsData(this);
    }
    return orElse();
  }
}

abstract class _AcceptingPopularInstructorsBottomSheetData
    implements PopularInstructorsBottomSheetStates {
  const factory _AcceptingPopularInstructorsBottomSheetData(
          {required final List<PopularInstructorsModel> instructors}) =
      _$AcceptingPopularInstructorsBottomSheetDataImpl;

  List<PopularInstructorsModel> get instructors;
  @JsonKey(ignore: true)
  _$$AcceptingPopularInstructorsBottomSheetDataImplCopyWith<
          _$AcceptingPopularInstructorsBottomSheetDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSendingPopularInstructorsBottomSheetImplCopyWith<$Res> {
  factory _$$ErrorSendingPopularInstructorsBottomSheetImplCopyWith(
          _$ErrorSendingPopularInstructorsBottomSheetImpl value,
          $Res Function(_$ErrorSendingPopularInstructorsBottomSheetImpl) then) =
      __$$ErrorSendingPopularInstructorsBottomSheetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSendingPopularInstructorsBottomSheetImplCopyWithImpl<$Res>
    extends _$PopularInstructorsBottomSheetStatesCopyWithImpl<$Res,
        _$ErrorSendingPopularInstructorsBottomSheetImpl>
    implements _$$ErrorSendingPopularInstructorsBottomSheetImplCopyWith<$Res> {
  __$$ErrorSendingPopularInstructorsBottomSheetImplCopyWithImpl(
      _$ErrorSendingPopularInstructorsBottomSheetImpl _value,
      $Res Function(_$ErrorSendingPopularInstructorsBottomSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSendingPopularInstructorsBottomSheetImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSendingPopularInstructorsBottomSheetImpl
    implements _ErrorSendingPopularInstructorsBottomSheet {
  const _$ErrorSendingPopularInstructorsBottomSheetImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PopularInstructorsBottomSheetStates.errorSendingRequest(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSendingPopularInstructorsBottomSheetImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSendingPopularInstructorsBottomSheetImplCopyWith<
          _$ErrorSendingPopularInstructorsBottomSheetImpl>
      get copyWith =>
          __$$ErrorSendingPopularInstructorsBottomSheetImplCopyWithImpl<
                  _$ErrorSendingPopularInstructorsBottomSheetImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(List<PopularInstructorsModel> instructors)
        acceptingPopularInstructorsData,
    required TResult Function(String error) errorSendingRequest,
  }) {
    return errorSendingRequest(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult? Function(String error)? errorSendingRequest,
  }) {
    return errorSendingRequest?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(List<PopularInstructorsModel> instructors)?
        acceptingPopularInstructorsData,
    TResult Function(String error)? errorSendingRequest,
    required TResult orElse(),
  }) {
    if (errorSendingRequest != null) {
      return errorSendingRequest(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntitalStatePopularInstructorsBottomSheet value)
        initialState,
    required TResult Function(_AcceptingPopularInstructorsBottomSheetData value)
        acceptingPopularInstructorsData,
    required TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)
        errorSendingRequest,
  }) {
    return errorSendingRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult? Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult? Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
  }) {
    return errorSendingRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IntitalStatePopularInstructorsBottomSheet value)?
        initialState,
    TResult Function(_AcceptingPopularInstructorsBottomSheetData value)?
        acceptingPopularInstructorsData,
    TResult Function(_ErrorSendingPopularInstructorsBottomSheet value)?
        errorSendingRequest,
    required TResult orElse(),
  }) {
    if (errorSendingRequest != null) {
      return errorSendingRequest(this);
    }
    return orElse();
  }
}

abstract class _ErrorSendingPopularInstructorsBottomSheet
    implements PopularInstructorsBottomSheetStates {
  const factory _ErrorSendingPopularInstructorsBottomSheet(
          {required final String error}) =
      _$ErrorSendingPopularInstructorsBottomSheetImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSendingPopularInstructorsBottomSheetImplCopyWith<
          _$ErrorSendingPopularInstructorsBottomSheetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
