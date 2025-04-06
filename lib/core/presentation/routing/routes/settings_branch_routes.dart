part of '../app_router.dart';

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static const routes = [
    TypedGoRoute<SettingsRoute>(
      path: '/settings',
      routes: [
        TypedGoRoute<LanguageRoute>(path: 'language'),
        TypedGoRoute<WorkingHoursRoute>(path: 'workingHours'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsScreen();
}

class LanguageRoute extends GoRouteData {
  const LanguageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LanguageScreen();
}

class WorkingHoursRoute extends GoRouteData {
  const WorkingHoursRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WorkingHoursSettingsScreen();
}
