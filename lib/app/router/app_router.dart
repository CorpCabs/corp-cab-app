// import 'package:auto_route/auto_route.dart';
// import 'package:corp_cab_app/app/router/app_router.gr.dart';

// @AutoRouterConfig(replaceInRouteName: 'View,Route')

// /// Holds all the routes that are defined in the app
// /// Used to generate the Router object
// final class AppRouter extends RootStackRouter {
//   @override
//   List<AutoRoute> get routes => [
//         // TODO: Add routes here
//         AutoRoute(
//           initial: true,
//           page: ScaffoldWithNavbar(navigationShell: navigationShell).page,
//         ),
//       ];
// }

import 'package:corp_cab_app/app/router/custom_route_observer.dart';
import 'package:corp_cab_app/feature/activity/view/activity_page.dart';
import 'package:corp_cab_app/feature/book_ride/bookride.dart';
import 'package:corp_cab_app/feature/confirm/confirm.dart';
import 'package:corp_cab_app/feature/index.dart';
import 'package:corp_cab_app/feature/ride_details/details.dart';
import 'package:corp_cab_app/feature/schedule_ride/schedule_ride.dart';
import 'package:corp_cab_app/feature/select_car/select_car.dart';
// Create keys for `root` & `section` navigator avoiding unnecessary rebuilds
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  observers: [
    GoRouterObserver(),
  ],
  routes: <RouteBase>[
    /*
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
      routes: <RouteBase>[
        GoRoute(
          path: '/driver-list',
          builder: (context, state) => const DriverListPage(),
        ),
      ],
    ),*/
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
        // The [StatefulNavigationShell] is passed to be able to navigate to other branches in a stateful way.
        // return ScaffoldWithNavbar(navigationShell: navigationShell);
        return ScaffoldWithNavbar(
          navigationShell: navigationShell,
        );
      },
      branches: [
        // The route branch for the 1º Tab
        StatefulShellBranch(
          routes: <RouteBase>[
            // Add this branch routes
            // each routes with its sub routes if available e.g shope/uuid/details
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomePage(),
              routes: <RouteBase>[
                GoRoute(
                  path: '/book-ride',
                  builder: (context, state) => const BookRidePage(),
                ),
                GoRoute(
                  path: '/schedule-ride',
                  builder: (context, state) => const ScheduleRidePage(),
                ),
                GoRoute(
                  path: '/select-car',
                  builder: (context, state) => const CarSelectionPage(),
                ),
                GoRoute(
                  path: '/driver-list',
                  builder: (context, state) => const DriverListPage(),
                ),
                GoRoute(
                  path: '/booking-confirm',
                  builder: (context, state) => const YourRidePage(),
                ),
                GoRoute(
                  path: '/ride-details',
                  builder: (context, state) => const RideDetailsPage(),
                ),
              ],
            ),
          ],
        ),
        // The route branch for 2º Tab
        StatefulShellBranch(
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              path: '/activity',
              builder: (context, state) => const ActivityPage(),
              // routes: <RouteBase> [

              // ],
            ),
          ],
        ),
        // The route branch for 3º Tab
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          // Add this branch routes
          // each routes with its sub routes if available e.g feed/uuid/details
          routes: <RouteBase>[
            GoRoute(
              path: '/setting',
              builder: (context, state) => const SettingsPage(),
              // routes: <RouteBase> [

              // ],
            ),
          ],
        ),
      ],
    ),
  ],
);
