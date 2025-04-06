// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentPlaceDetailsHash() =>
    r'793764e32cb825a700dda621da1ffc99c2049cb1';

/// See also [currentPlaceDetails].
@ProviderFor(currentPlaceDetails)
final currentPlaceDetailsProvider =
    AutoDisposeProvider<Option<PlaceDetails>>.internal(
  currentPlaceDetails,
  name: r'currentPlaceDetailsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentPlaceDetailsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentPlaceDetailsRef = AutoDisposeProviderRef<Option<PlaceDetails>>;
String _$selectedPlaceAutocompleteHash() =>
    r'1118e9c484f58c14de3e85f0eb622a9391032be5';

/// See also [SelectedPlaceAutocomplete].
@ProviderFor(SelectedPlaceAutocomplete)
final selectedPlaceAutocompleteProvider = AutoDisposeNotifierProvider<
    SelectedPlaceAutocomplete, Option<PlaceAutocomplete>>.internal(
  SelectedPlaceAutocomplete.new,
  name: r'selectedPlaceAutocompleteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedPlaceAutocompleteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedPlaceAutocomplete
    = AutoDisposeNotifier<Option<PlaceAutocomplete>>;
String _$getPlaceDetailsHash() => r'eb748a944c2a0b7426c9e024275774a982502c54';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetPlaceDetails
    extends BuildlessAutoDisposeAsyncNotifier<PlaceDetails> {
  late final String placeId;

  FutureOr<PlaceDetails> build(
    String placeId,
  );
}

/// See also [GetPlaceDetails].
@ProviderFor(GetPlaceDetails)
const getPlaceDetailsProvider = GetPlaceDetailsFamily();

/// See also [GetPlaceDetails].
class GetPlaceDetailsFamily extends Family<AsyncValue<PlaceDetails>> {
  /// See also [GetPlaceDetails].
  const GetPlaceDetailsFamily();

  /// See also [GetPlaceDetails].
  GetPlaceDetailsProvider call(
    String placeId,
  ) {
    return GetPlaceDetailsProvider(
      placeId,
    );
  }

  @override
  GetPlaceDetailsProvider getProviderOverride(
    covariant GetPlaceDetailsProvider provider,
  ) {
    return call(
      provider.placeId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaceDetailsProvider';
}

/// See also [GetPlaceDetails].
class GetPlaceDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    GetPlaceDetails, PlaceDetails> {
  /// See also [GetPlaceDetails].
  GetPlaceDetailsProvider(
    String placeId,
  ) : this._internal(
          () => GetPlaceDetails()..placeId = placeId,
          from: getPlaceDetailsProvider,
          name: r'getPlaceDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaceDetailsHash,
          dependencies: GetPlaceDetailsFamily._dependencies,
          allTransitiveDependencies:
              GetPlaceDetailsFamily._allTransitiveDependencies,
          placeId: placeId,
        );

  GetPlaceDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.placeId,
  }) : super.internal();

  final String placeId;

  @override
  FutureOr<PlaceDetails> runNotifierBuild(
    covariant GetPlaceDetails notifier,
  ) {
    return notifier.build(
      placeId,
    );
  }

  @override
  Override overrideWith(GetPlaceDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetPlaceDetailsProvider._internal(
        () => create()..placeId = placeId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        placeId: placeId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetPlaceDetails, PlaceDetails>
      createElement() {
    return _GetPlaceDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaceDetailsProvider && other.placeId == placeId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, placeId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlaceDetailsRef on AutoDisposeAsyncNotifierProviderRef<PlaceDetails> {
  /// The parameter `placeId` of this provider.
  String get placeId;
}

class _GetPlaceDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetPlaceDetails,
        PlaceDetails> with GetPlaceDetailsRef {
  _GetPlaceDetailsProviderElement(super.provider);

  @override
  String get placeId => (origin as GetPlaceDetailsProvider).placeId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
