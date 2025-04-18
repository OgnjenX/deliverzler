// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserStateHash() => r'd16e022b3657f254a8e901a431c52311b73da818';

/// See also [currentUserState].
@ProviderFor(currentUserState)
final currentUserStateProvider = AutoDisposeFutureProvider<User>.internal(
  currentUserState,
  name: r'currentUserStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserStateRef = AutoDisposeFutureProviderRef<User>;
String _$currentUserHash() => r'a4c1c6b5d12d4eea16187cb31f05001c09d5839f';

/// See also [currentUser].
@ProviderFor(currentUser)
final currentUserProvider = AutoDisposeProvider<User>.internal(
  currentUser,
  name: r'currentUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserRef = AutoDisposeProviderRef<User>;
String _$authStateHash() => r'1009ba3f81452f2e5b7062ad2709ebc8cacc8375';

/// See also [AuthState].
@ProviderFor(AuthState)
final authStateProvider = NotifierProvider<AuthState, Option<User>>.internal(
  AuthState.new,
  name: r'authStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthState = Notifier<Option<User>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
