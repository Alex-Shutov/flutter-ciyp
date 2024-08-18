import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pocket/pages/home_page.dart';
import 'package:pocket/pages/login/auth_page1.dart';
import 'package:pocket/pages/login/auth_page10.dart';
import 'package:pocket/pages/login/auth_page2.dart';
import 'package:pocket/pages/login/auth_page3.dart';
import 'package:pocket/pages/login/auth_page4.dart';
import 'package:pocket/pages/login/auth_page5.dart';
import 'package:pocket/pages/login/auth_page6.dart';
import 'package:pocket/pages/login/auth_page7.dart';
import 'package:pocket/pages/login/auth_page8.dart';
import 'package:pocket/pages/login/auth_page9.dart';
import 'package:pocket/pages/login/login_page0.dart';
import 'package:pocket/pages/menu_component.dart';
import 'package:pocket/pages/my_events.dart';
import 'package:pocket/pages/page1.dart';
import 'package:pocket/pages/page2.dart';
import 'package:pocket/pages/page3.dart';
import 'package:pocket/pages/page4.dart';
import 'package:pocket/pages/place_detail_Page.dart';
import 'package:pocket/router/empty_route_page.dart';
part 'router.gr.dart';

final loginRoutes = [
      AuthRoute1.page,
      AuthRoute2.page,
      AuthRoute3.page,
      AuthRoute4.page,
      AuthRoute5.page,
      AuthRoute6.page,
      AuthRoute7.page,
      AuthRoute8.page,
      AuthRoute9.page,
      AuthRoute10.page,
      The1Route.page

].map((e) => AutoRoute(page: e)).toList();

final mapRoutes = [
      AutoRoute(page: The1Route.page),
      AutoRoute(page: PlaceDetailRoute.page),
      AutoRoute(page: MenuComponentRoute.page),
      AutoRoute(page: MyOffersRoute.page),
      AutoRoute(page: The2Route.page),
      AutoRoute(page: The3Route.page),
      AutoRoute(page: The4Route.page),
      
    ];

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: MainLoginRoute.page,
      path: '/',
      children: loginRoutes, // Login routes with nested HomeRoute
    ),
    AutoRoute(
      page: HomeRoute.page, // Separate route for Home with its own children
      path: '/home', // Set a specific path for Home
      children: mapRoutes, // Nested routes for Home
    ),
    AutoRoute(page: MenuComponentRoute.page, path: '/menu'), // Route for Menu
    RedirectRoute(path: '*', redirectTo: '/'), // Redirect unmatched paths to '/'
  ];
}
