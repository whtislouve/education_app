// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvents {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInButtonPressed value) signInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInButtonPressed value)? signInButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInButtonPressed value)? signInButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventsCopyWith<SignInEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventsCopyWith<$Res> {
  factory $SignInEventsCopyWith(
          SignInEvents value, $Res Function(SignInEvents) then) =
      _$SignInEventsCopyWithImpl<$Res, SignInEvents>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventsCopyWithImpl<$Res, $Val extends SignInEvents>
    implements $SignInEventsCopyWith<$Res> {
  _$SignInEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInButtonPressedImplCopyWith<$Res>
    implements $SignInEventsCopyWith<$Res> {
  factory _$$SignInButtonPressedImplCopyWith(_$SignInButtonPressedImpl value,
          $Res Function(_$SignInButtonPressedImpl) then) =
      __$$SignInButtonPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInButtonPressedImplCopyWithImpl<$Res>
    extends _$SignInEventsCopyWithImpl<$Res, _$SignInButtonPressedImpl>
    implements _$$SignInButtonPressedImplCopyWith<$Res> {
  __$$SignInButtonPressedImplCopyWithImpl(_$SignInButtonPressedImpl _value,
      $Res Function(_$SignInButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInButtonPressedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInButtonPressedImpl implements SignInButtonPressed {
  const _$SignInButtonPressedImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvents.signInButtonPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInButtonPressedImplCopyWith<_$SignInButtonPressedImpl> get copyWith =>
      __$$SignInButtonPressedImplCopyWithImpl<_$SignInButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        signInButtonPressed,
  }) {
    return signInButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInButtonPressed,
  }) {
    return signInButtonPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInButtonPressed,
    required TResult orElse(),
  }) {
    if (signInButtonPressed != null) {
      return signInButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInButtonPressed value) signInButtonPressed,
  }) {
    return signInButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInButtonPressed value)? signInButtonPressed,
  }) {
    return signInButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInButtonPressed value)? signInButtonPressed,
    required TResult orElse(),
  }) {
    if (signInButtonPressed != null) {
      return signInButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SignInButtonPressed implements SignInEvents {
  const factory SignInButtonPressed(final String email, final String password) =
      _$SignInButtonPressedImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInButtonPressedImplCopyWith<_$SignInButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSignInState,
    required TResult Function(String signInToken) acceptingSignInResponse,
    required TResult Function(String errorText) errorSendSignInData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSignInState,
    TResult? Function(String signInToken)? acceptingSignInResponse,
    TResult? Function(String errorText)? errorSendSignInData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSignInState,
    TResult Function(String signInToken)? acceptingSignInResponse,
    TResult Function(String errorText)? errorSendSignInData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignInState value) initialSignInState,
    required TResult Function(_AcceptingSignInResponse value)
        acceptingSignInResponse,
    required TResult Function(_ErrorSendSignInData value) errorSendSignInData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignInState value)? initialSignInState,
    TResult? Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult? Function(_ErrorSendSignInData value)? errorSendSignInData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignInState value)? initialSignInState,
    TResult Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult Function(_ErrorSendSignInData value)? errorSendSignInData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStatesCopyWith<$Res> {
  factory $SignInStatesCopyWith(
          SignInStates value, $Res Function(SignInStates) then) =
      _$SignInStatesCopyWithImpl<$Res, SignInStates>;
}

/// @nodoc
class _$SignInStatesCopyWithImpl<$Res, $Val extends SignInStates>
    implements $SignInStatesCopyWith<$Res> {
  _$SignInStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSignInStateImplCopyWith<$Res> {
  factory _$$InitialSignInStateImplCopyWith(_$InitialSignInStateImpl value,
          $Res Function(_$InitialSignInStateImpl) then) =
      __$$InitialSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStatesCopyWithImpl<$Res, _$InitialSignInStateImpl>
    implements _$$InitialSignInStateImplCopyWith<$Res> {
  __$$InitialSignInStateImplCopyWithImpl(_$InitialSignInStateImpl _value,
      $Res Function(_$InitialSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSignInStateImpl implements _InitialSignInState {
  const _$InitialSignInStateImpl();

  @override
  String toString() {
    return 'SignInStates.initialSignInState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSignInState,
    required TResult Function(String signInToken) acceptingSignInResponse,
    required TResult Function(String errorText) errorSendSignInData,
  }) {
    return initialSignInState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSignInState,
    TResult? Function(String signInToken)? acceptingSignInResponse,
    TResult? Function(String errorText)? errorSendSignInData,
  }) {
    return initialSignInState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSignInState,
    TResult Function(String signInToken)? acceptingSignInResponse,
    TResult Function(String errorText)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (initialSignInState != null) {
      return initialSignInState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignInState value) initialSignInState,
    required TResult Function(_AcceptingSignInResponse value)
        acceptingSignInResponse,
    required TResult Function(_ErrorSendSignInData value) errorSendSignInData,
  }) {
    return initialSignInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignInState value)? initialSignInState,
    TResult? Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult? Function(_ErrorSendSignInData value)? errorSendSignInData,
  }) {
    return initialSignInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignInState value)? initialSignInState,
    TResult Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult Function(_ErrorSendSignInData value)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (initialSignInState != null) {
      return initialSignInState(this);
    }
    return orElse();
  }
}

abstract class _InitialSignInState implements SignInStates {
  const factory _InitialSignInState() = _$InitialSignInStateImpl;
}

/// @nodoc
abstract class _$$AcceptingSignInResponseImplCopyWith<$Res> {
  factory _$$AcceptingSignInResponseImplCopyWith(
          _$AcceptingSignInResponseImpl value,
          $Res Function(_$AcceptingSignInResponseImpl) then) =
      __$$AcceptingSignInResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String signInToken});
}

/// @nodoc
class __$$AcceptingSignInResponseImplCopyWithImpl<$Res>
    extends _$SignInStatesCopyWithImpl<$Res, _$AcceptingSignInResponseImpl>
    implements _$$AcceptingSignInResponseImplCopyWith<$Res> {
  __$$AcceptingSignInResponseImplCopyWithImpl(
      _$AcceptingSignInResponseImpl _value,
      $Res Function(_$AcceptingSignInResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInToken = null,
  }) {
    return _then(_$AcceptingSignInResponseImpl(
      signInToken: null == signInToken
          ? _value.signInToken
          : signInToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptingSignInResponseImpl implements _AcceptingSignInResponse {
  const _$AcceptingSignInResponseImpl({required this.signInToken});

  @override
  final String signInToken;

  @override
  String toString() {
    return 'SignInStates.acceptingSignInResponse(signInToken: $signInToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptingSignInResponseImpl &&
            (identical(other.signInToken, signInToken) ||
                other.signInToken == signInToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptingSignInResponseImplCopyWith<_$AcceptingSignInResponseImpl>
      get copyWith => __$$AcceptingSignInResponseImplCopyWithImpl<
          _$AcceptingSignInResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSignInState,
    required TResult Function(String signInToken) acceptingSignInResponse,
    required TResult Function(String errorText) errorSendSignInData,
  }) {
    return acceptingSignInResponse(signInToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSignInState,
    TResult? Function(String signInToken)? acceptingSignInResponse,
    TResult? Function(String errorText)? errorSendSignInData,
  }) {
    return acceptingSignInResponse?.call(signInToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSignInState,
    TResult Function(String signInToken)? acceptingSignInResponse,
    TResult Function(String errorText)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (acceptingSignInResponse != null) {
      return acceptingSignInResponse(signInToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignInState value) initialSignInState,
    required TResult Function(_AcceptingSignInResponse value)
        acceptingSignInResponse,
    required TResult Function(_ErrorSendSignInData value) errorSendSignInData,
  }) {
    return acceptingSignInResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignInState value)? initialSignInState,
    TResult? Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult? Function(_ErrorSendSignInData value)? errorSendSignInData,
  }) {
    return acceptingSignInResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignInState value)? initialSignInState,
    TResult Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult Function(_ErrorSendSignInData value)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (acceptingSignInResponse != null) {
      return acceptingSignInResponse(this);
    }
    return orElse();
  }
}

abstract class _AcceptingSignInResponse implements SignInStates {
  const factory _AcceptingSignInResponse({required final String signInToken}) =
      _$AcceptingSignInResponseImpl;

  String get signInToken;
  @JsonKey(ignore: true)
  _$$AcceptingSignInResponseImplCopyWith<_$AcceptingSignInResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSendSignInDataImplCopyWith<$Res> {
  factory _$$ErrorSendSignInDataImplCopyWith(_$ErrorSendSignInDataImpl value,
          $Res Function(_$ErrorSendSignInDataImpl) then) =
      __$$ErrorSendSignInDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$ErrorSendSignInDataImplCopyWithImpl<$Res>
    extends _$SignInStatesCopyWithImpl<$Res, _$ErrorSendSignInDataImpl>
    implements _$$ErrorSendSignInDataImplCopyWith<$Res> {
  __$$ErrorSendSignInDataImplCopyWithImpl(_$ErrorSendSignInDataImpl _value,
      $Res Function(_$ErrorSendSignInDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = null,
  }) {
    return _then(_$ErrorSendSignInDataImpl(
      errorText: null == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSendSignInDataImpl implements _ErrorSendSignInData {
  const _$ErrorSendSignInDataImpl({required this.errorText});

  @override
  final String errorText;

  @override
  String toString() {
    return 'SignInStates.errorSendSignInData(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSendSignInDataImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSendSignInDataImplCopyWith<_$ErrorSendSignInDataImpl> get copyWith =>
      __$$ErrorSendSignInDataImplCopyWithImpl<_$ErrorSendSignInDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialSignInState,
    required TResult Function(String signInToken) acceptingSignInResponse,
    required TResult Function(String errorText) errorSendSignInData,
  }) {
    return errorSendSignInData(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialSignInState,
    TResult? Function(String signInToken)? acceptingSignInResponse,
    TResult? Function(String errorText)? errorSendSignInData,
  }) {
    return errorSendSignInData?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialSignInState,
    TResult Function(String signInToken)? acceptingSignInResponse,
    TResult Function(String errorText)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (errorSendSignInData != null) {
      return errorSendSignInData(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSignInState value) initialSignInState,
    required TResult Function(_AcceptingSignInResponse value)
        acceptingSignInResponse,
    required TResult Function(_ErrorSendSignInData value) errorSendSignInData,
  }) {
    return errorSendSignInData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSignInState value)? initialSignInState,
    TResult? Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult? Function(_ErrorSendSignInData value)? errorSendSignInData,
  }) {
    return errorSendSignInData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSignInState value)? initialSignInState,
    TResult Function(_AcceptingSignInResponse value)? acceptingSignInResponse,
    TResult Function(_ErrorSendSignInData value)? errorSendSignInData,
    required TResult orElse(),
  }) {
    if (errorSendSignInData != null) {
      return errorSendSignInData(this);
    }
    return orElse();
  }
}

abstract class _ErrorSendSignInData implements SignInStates {
  const factory _ErrorSendSignInData({required final String errorText}) =
      _$ErrorSendSignInDataImpl;

  String get errorText;
  @JsonKey(ignore: true)
  _$$ErrorSendSignInDataImplCopyWith<_$ErrorSendSignInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
