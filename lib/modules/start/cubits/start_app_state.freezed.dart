// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StartAppState {
  bool? get isLogged => throw _privateConstructorUsedError;
  UserFlutterDto? get myUser => throw _privateConstructorUsedError;
  bool get needTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartAppStateCopyWith<StartAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartAppStateCopyWith<$Res> {
  factory $StartAppStateCopyWith(
          StartAppState value, $Res Function(StartAppState) then) =
      _$StartAppStateCopyWithImpl<$Res, StartAppState>;
  @useResult
  $Res call({bool? isLogged, UserFlutterDto? myUser, bool needTheme});
}

/// @nodoc
class _$StartAppStateCopyWithImpl<$Res, $Val extends StartAppState>
    implements $StartAppStateCopyWith<$Res> {
  _$StartAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
    Object? myUser = freezed,
    Object? needTheme = null,
  }) {
    return _then(_value.copyWith(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      myUser: freezed == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as UserFlutterDto?,
      needTheme: null == needTheme
          ? _value.needTheme
          : needTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartAppStateImplCopyWith<$Res>
    implements $StartAppStateCopyWith<$Res> {
  factory _$$StartAppStateImplCopyWith(
          _$StartAppStateImpl value, $Res Function(_$StartAppStateImpl) then) =
      __$$StartAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLogged, UserFlutterDto? myUser, bool needTheme});
}

/// @nodoc
class __$$StartAppStateImplCopyWithImpl<$Res>
    extends _$StartAppStateCopyWithImpl<$Res, _$StartAppStateImpl>
    implements _$$StartAppStateImplCopyWith<$Res> {
  __$$StartAppStateImplCopyWithImpl(
      _$StartAppStateImpl _value, $Res Function(_$StartAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
    Object? myUser = freezed,
    Object? needTheme = null,
  }) {
    return _then(_$StartAppStateImpl(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      myUser: freezed == myUser
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as UserFlutterDto?,
      needTheme: null == needTheme
          ? _value.needTheme
          : needTheme // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartAppStateImpl implements _StartAppState {
  const _$StartAppStateImpl(
      {this.isLogged, this.myUser, this.needTheme = true});

  @override
  final bool? isLogged;
  @override
  final UserFlutterDto? myUser;
  @override
  @JsonKey()
  final bool needTheme;

  @override
  String toString() {
    return 'StartAppState(isLogged: $isLogged, myUser: $myUser, needTheme: $needTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartAppStateImpl &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged) &&
            (identical(other.myUser, myUser) || other.myUser == myUser) &&
            (identical(other.needTheme, needTheme) ||
                other.needTheme == needTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged, myUser, needTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      __$$StartAppStateImplCopyWithImpl<_$StartAppStateImpl>(this, _$identity);
}

abstract class _StartAppState implements StartAppState {
  const factory _StartAppState(
      {final bool? isLogged,
      final UserFlutterDto? myUser,
      final bool needTheme}) = _$StartAppStateImpl;

  @override
  bool? get isLogged;
  @override
  UserFlutterDto? get myUser;
  @override
  bool get needTheme;
  @override
  @JsonKey(ignore: true)
  _$$StartAppStateImplCopyWith<_$StartAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
