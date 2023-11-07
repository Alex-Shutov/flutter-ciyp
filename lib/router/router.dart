import 'package:auto_route/auto_route.dart';
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
import 'package:pocket/pages/page1.dart';
import 'package:pocket/pages/page2.dart';
import 'package:pocket/pages/page3.dart';
import 'package:pocket/pages/page4.dart';
import 'package:pocket/router/empty_route_page.dart';
part 'router.gr.dart';

final appRoutes = [
  AutoRoute(
    page: HomeRoute.page,
    children: [
      AutoRoute(page: The1Route.page),
      AutoRoute(page: The2Route.page),
      AutoRoute(page: The3Route.page),
      AutoRoute(page: The4Route.page),
    ],
  ),
  AutoRoute(page: MainLoginRoute.page, children: [
    ...[
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
    ].map((e) => AutoRoute(page: e)),
  ])
];

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: EmptyRouteRoute.page, path: '/', children: appRoutes),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
