// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAutocomplete {
  String get placeId;
  String get description;
  String get mainText;
  String get secondaryText;

  /// Create a copy of PlaceAutocomplete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceAutocompleteCopyWith<PlaceAutocomplete> get copyWith =>
      _$PlaceAutocompleteCopyWithImpl<PlaceAutocomplete>(
          this as PlaceAutocomplete, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceAutocomplete &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, description, mainText, secondaryText);

  @override
  String toString() {
    return 'PlaceAutocomplete(placeId: $placeId, description: $description, mainText: $mainText, secondaryText: $secondaryText)';
  }
}

/// @nodoc
abstract mixin class $PlaceAutocompleteCopyWith<$Res> {
  factory $PlaceAutocompleteCopyWith(
          PlaceAutocomplete value, $Res Function(PlaceAutocomplete) _then) =
      _$PlaceAutocompleteCopyWithImpl;
  @useResult
  $Res call(
      {String placeId,
      String description,
      String mainText,
      String secondaryText});
}

/// @nodoc
class _$PlaceAutocompleteCopyWithImpl<$Res>
    implements $PlaceAutocompleteCopyWith<$Res> {
  _$PlaceAutocompleteCopyWithImpl(this._self, this._then);

  final PlaceAutocomplete _self;
  final $Res Function(PlaceAutocomplete) _then;

  /// Create a copy of PlaceAutocomplete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? description = null,
    Object? mainText = null,
    Object? secondaryText = null,
  }) {
    return _then(_self.copyWith(
      placeId: null == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: null == mainText
          ? _self.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _self.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PlaceAutocomplete implements PlaceAutocomplete {
  const _PlaceAutocomplete(
      {required this.placeId,
      required this.description,
      required this.mainText,
      required this.secondaryText});

  @override
  final String placeId;
  @override
  final String description;
  @override
  final String mainText;
  @override
  final String secondaryText;

  /// Create a copy of PlaceAutocomplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceAutocompleteCopyWith<_PlaceAutocomplete> get copyWith =>
      __$PlaceAutocompleteCopyWithImpl<_PlaceAutocomplete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceAutocomplete &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, description, mainText, secondaryText);

  @override
  String toString() {
    return 'PlaceAutocomplete(placeId: $placeId, description: $description, mainText: $mainText, secondaryText: $secondaryText)';
  }
}

/// @nodoc
abstract mixin class _$PlaceAutocompleteCopyWith<$Res>
    implements $PlaceAutocompleteCopyWith<$Res> {
  factory _$PlaceAutocompleteCopyWith(
          _PlaceAutocomplete value, $Res Function(_PlaceAutocomplete) _then) =
      __$PlaceAutocompleteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String placeId,
      String description,
      String mainText,
      String secondaryText});
}

/// @nodoc
class __$PlaceAutocompleteCopyWithImpl<$Res>
    implements _$PlaceAutocompleteCopyWith<$Res> {
  __$PlaceAutocompleteCopyWithImpl(this._self, this._then);

  final _PlaceAutocomplete _self;
  final $Res Function(_PlaceAutocomplete) _then;

  /// Create a copy of PlaceAutocomplete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? placeId = null,
    Object? description = null,
    Object? mainText = null,
    Object? secondaryText = null,
  }) {
    return _then(_PlaceAutocomplete(
      placeId: null == placeId
          ? _self.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      mainText: null == mainText
          ? _self.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryText: null == secondaryText
          ? _self.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
