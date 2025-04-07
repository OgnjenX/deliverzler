// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $signInRoute,
      $splashRoute,
      $noInternetRoute,
      $homeShellRouteData,
    ];

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/login',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $noInternetRoute => GoRouteData.$route(
      path: '/no_internet',
      factory: $NoInternetRouteExtension._fromState,
    );

extension $NoInternetRouteExtension on NoInternetRoute {
  static NoInternetRoute _fromState(GoRouterState state) =>
      const NoInternetRoute();

  String get location => GoRouteData.$location(
        '/no_internet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeShellRouteData => StatefulShellRouteData.$route(
      restorationScopeId: HomeShellRouteData.$restorationScopeId,
      factory: $HomeShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          restorationScopeId: HomeBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'map',
                  factory: $MapRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: ProfileBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          restorationScopeId: SettingsBranchData.$restorationScopeId,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'language',
                  factory: $LanguageRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'workingHours',
                  factory: $WorkingHoursRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $HomeShellRouteDataExtension on HomeShellRouteData {
  static HomeShellRouteData _fromState(GoRouterState state) =>
      const HomeShellRouteData();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MapRouteExtension on MapRoute {
  static MapRoute _fromState(GoRouterState state) => const MapRoute();

  String get location => GoRouteData.$location(
        '/home/map',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LanguageRouteExtension on LanguageRoute {
  static LanguageRoute _fromState(GoRouterState state) => const LanguageRoute();

  String get location => GoRouteData.$location(
        '/settings/language',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WorkingHoursRouteExtension on WorkingHoursRoute {
  static WorkingHoursRoute _fromState(GoRouterState state) =>
      const WorkingHoursRoute();

  String get location => GoRouteData.$location(
        '/settings/workingHours',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'b58eb5532837e430bc1efb7e9b969983cbffdc2b';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
