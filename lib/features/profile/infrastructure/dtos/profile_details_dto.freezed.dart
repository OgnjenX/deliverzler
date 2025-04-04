// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileDetailsDto {
  String get name;
  String get phone;

  /// Create a copy of ProfileDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileDetailsDtoCopyWith<ProfileDetailsDto> get copyWith =>
      _$ProfileDetailsDtoCopyWithImpl<ProfileDetailsDto>(
          this as ProfileDetailsDto, _$identity);

  /// Serializes this ProfileDetailsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileDetailsDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone);

  @override
  String toString() {
    return 'ProfileDetailsDto(name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $ProfileDetailsDtoCopyWith<$Res> {
  factory $ProfileDetailsDtoCopyWith(
          ProfileDetailsDto value, $Res Function(ProfileDetailsDto) _then) =
      _$ProfileDetailsDtoCopyWithImpl;
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class _$ProfileDetailsDtoCopyWithImpl<$Res>
    implements $ProfileDetailsDtoCopyWith<$Res> {
  _$ProfileDetailsDtoCopyWithImpl(this._self, this._then);

  final ProfileDetailsDto _self;
  final $Res Function(ProfileDetailsDto) _then;

  /// Create a copy of ProfileDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _ProfileDetailsDto implements ProfileDetailsDto {
  const _ProfileDetailsDto({required this.name, required this.phone});

  @override
  final String name;
  @override
  final String phone;

  /// Create a copy of ProfileDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileDetailsDtoCopyWith<_ProfileDetailsDto> get copyWith =>
      __$ProfileDetailsDtoCopyWithImpl<_ProfileDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileDetailsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileDetailsDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, phone);

  @override
  String toString() {
    return 'ProfileDetailsDto(name: $name, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$ProfileDetailsDtoCopyWith<$Res>
    implements $ProfileDetailsDtoCopyWith<$Res> {
  factory _$ProfileDetailsDtoCopyWith(
          _ProfileDetailsDto value, $Res Function(_ProfileDetailsDto) _then) =
      __$ProfileDetailsDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class __$ProfileDetailsDtoCopyWithImpl<$Res>
    implements _$ProfileDetailsDtoCopyWith<$Res> {
  __$ProfileDetailsDtoCopyWithImpl(this._self, this._then);

  final _ProfileDetailsDto _self;
  final $Res Function(_ProfileDetailsDto) _then;

  /// Create a copy of ProfileDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_ProfileDetailsDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
