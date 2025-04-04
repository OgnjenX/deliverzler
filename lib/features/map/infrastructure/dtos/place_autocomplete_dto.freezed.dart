// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_autocomplete_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceAutocompleteDto {
  @JsonKey(name: 'place_id')
  String get placeId;
  @JsonKey(name: 'description')
  String get description;
  @JsonKey(readValue: _readMainText)
  String get mainText;
  @JsonKey(readValue: _readSecondaryText)
  String get secondaryText;

  /// Create a copy of PlaceAutocompleteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceAutocompleteDtoCopyWith<PlaceAutocompleteDto> get copyWith =>
      _$PlaceAutocompleteDtoCopyWithImpl<PlaceAutocompleteDto>(
          this as PlaceAutocompleteDto, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceAutocompleteDto &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, description, mainText, secondaryText);

  @override
  String toString() {
    return 'PlaceAutocompleteDto(placeId: $placeId, description: $description, mainText: $mainText, secondaryText: $secondaryText)';
  }
}

/// @nodoc
abstract mixin class $PlaceAutocompleteDtoCopyWith<$Res> {
  factory $PlaceAutocompleteDtoCopyWith(PlaceAutocompleteDto value,
          $Res Function(PlaceAutocompleteDto) _then) =
      _$PlaceAutocompleteDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'description') String description,
      @JsonKey(readValue: _readMainText) String mainText,
      @JsonKey(readValue: _readSecondaryText) String secondaryText});
}

/// @nodoc
class _$PlaceAutocompleteDtoCopyWithImpl<$Res>
    implements $PlaceAutocompleteDtoCopyWith<$Res> {
  _$PlaceAutocompleteDtoCopyWithImpl(this._self, this._then);

  final PlaceAutocompleteDto _self;
  final $Res Function(PlaceAutocompleteDto) _then;

  /// Create a copy of PlaceAutocompleteDto
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
@JsonSerializable(createToJson: false)
class _PlaceAutocompleteDto extends PlaceAutocompleteDto {
  const _PlaceAutocompleteDto(
      {@JsonKey(name: 'place_id') required this.placeId,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(readValue: _readMainText) required this.mainText,
      @JsonKey(readValue: _readSecondaryText) required this.secondaryText})
      : super._();
  factory _PlaceAutocompleteDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceAutocompleteDtoFromJson(json);

  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(readValue: _readMainText)
  final String mainText;
  @override
  @JsonKey(readValue: _readSecondaryText)
  final String secondaryText;

  /// Create a copy of PlaceAutocompleteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceAutocompleteDtoCopyWith<_PlaceAutocompleteDto> get copyWith =>
      __$PlaceAutocompleteDtoCopyWithImpl<_PlaceAutocompleteDto>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceAutocompleteDto &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mainText, mainText) ||
                other.mainText == mainText) &&
            (identical(other.secondaryText, secondaryText) ||
                other.secondaryText == secondaryText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, description, mainText, secondaryText);

  @override
  String toString() {
    return 'PlaceAutocompleteDto(placeId: $placeId, description: $description, mainText: $mainText, secondaryText: $secondaryText)';
  }
}

/// @nodoc
abstract mixin class _$PlaceAutocompleteDtoCopyWith<$Res>
    implements $PlaceAutocompleteDtoCopyWith<$Res> {
  factory _$PlaceAutocompleteDtoCopyWith(_PlaceAutocompleteDto value,
          $Res Function(_PlaceAutocompleteDto) _then) =
      __$PlaceAutocompleteDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place_id') String placeId,
      @JsonKey(name: 'description') String description,
      @JsonKey(readValue: _readMainText) String mainText,
      @JsonKey(readValue: _readSecondaryText) String secondaryText});
}

/// @nodoc
class __$PlaceAutocompleteDtoCopyWithImpl<$Res>
    implements _$PlaceAutocompleteDtoCopyWith<$Res> {
  __$PlaceAutocompleteDtoCopyWithImpl(this._self, this._then);

  final _PlaceAutocompleteDto _self;
  final $Res Function(_PlaceAutocompleteDto) _then;

  /// Create a copy of PlaceAutocompleteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? placeId = null,
    Object? description = null,
    Object? mainText = null,
    Object? secondaryText = null,
  }) {
    return _then(_PlaceAutocompleteDto(
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
