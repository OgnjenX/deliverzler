// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_app_theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentAppThemeModeHash() =>
    r'33a471e3b3ba92d877a97cb840e99be8e3d6a6cd';

/// See also [currentAppThemeMode].
@ProviderFor(currentAppThemeMode)
final currentAppThemeModeProvider = Provider<AppThemeMode>.internal(
  currentAppThemeMode,
  name: r'currentAppThemeModeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentAppThemeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentAppThemeModeRef = ProviderRef<AppThemeMode>;
String _$platformBrightnessHash() =>
    r'45d60c888829ec39a19ad4496abb7407e1e9ec96';

/// See also [PlatformBrightness].
@ProviderFor(PlatformBrightness)
final platformBrightnessProvider =
    NotifierProvider<PlatformBrightness, Brightness>.internal(
  PlatformBrightness.new,
  name: r'platformBrightnessProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$platformBrightnessHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PlatformBrightness = Notifier<Brightness>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
