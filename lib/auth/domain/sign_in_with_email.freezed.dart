// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_with_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInWithEmail {
// Note: You should consider using separate value object (with its validator method)
// for these values if they're used in other entities.
  String get email;
  String get password;

  /// Create a copy of SignInWithEmail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInWithEmailCopyWith<SignInWithEmail> get copyWith =>
      _$SignInWithEmailCopyWithImpl<SignInWithEmail>(
          this as SignInWithEmail, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInWithEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignInWithEmail(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $SignInWithEmailCopyWith<$Res> {
  factory $SignInWithEmailCopyWith(
          SignInWithEmail value, $Res Function(SignInWithEmail) _then) =
      _$SignInWithEmailCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInWithEmailCopyWithImpl<$Res>
    implements $SignInWithEmailCopyWith<$Res> {
  _$SignInWithEmailCopyWithImpl(this._self, this._then);

  final SignInWithEmail _self;
  final $Res Function(SignInWithEmail) _then;

  /// Create a copy of SignInWithEmail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SignInWithEmail implements SignInWithEmail {
  const _SignInWithEmail({required this.email, required this.password});

// Note: You should consider using separate value object (with its validator method)
// for these values if they're used in other entities.
  @override
  final String email;
  @override
  final String password;

  /// Create a copy of SignInWithEmail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInWithEmailCopyWith<_SignInWithEmail> get copyWith =>
      __$SignInWithEmailCopyWithImpl<_SignInWithEmail>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInWithEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignInWithEmail(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SignInWithEmailCopyWith<$Res>
    implements $SignInWithEmailCopyWith<$Res> {
  factory _$SignInWithEmailCopyWith(
          _SignInWithEmail value, $Res Function(_SignInWithEmail) _then) =
      __$SignInWithEmailCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$SignInWithEmailCopyWithImpl<$Res>
    implements _$SignInWithEmailCopyWith<$Res> {
  __$SignInWithEmailCopyWithImpl(this._self, this._then);

  final _SignInWithEmail _self;
  final $Res Function(_SignInWithEmail) _then;

  /// Create a copy of SignInWithEmail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_SignInWithEmail(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
