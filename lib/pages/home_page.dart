import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/pages/page1.dart';
import 'package:pocket/pages/page2.dart';
import 'package:pocket/store/app_store.dart';
import 'package:pocket/store/theme_store/theme_store.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/theme/theme_service.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  @override
  createState() => _State();
}

class _State extends State<HomePage> {
  final appStore = GetIt.I<AppStore>();
  var themeStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    themeStore ??= Provider.of<ThemeStore>(context);
    
  }
  // var _themeManager = GetIt.I.get<ThemeService>();
  @override
  Widget build(BuildContext ctx) {
    return AutoTabsScaffold(
      extendBodyBehindAppBar: true,
      appBarBuilder: (context, tabRouter) {
        bool isThe1Route = tabRouter.activeIndex == 0; // Assuming The1Route is at index 0

        return AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: appStore.appBarColor),
            onPressed: () {
              AutoRouter.of(context).navigate(The1Route());
            },
          ),
          actions: isThe1Route
              ? [
                  IconButton(
                    icon: Icon(Icons.menu, size: 28.0, color: AppColors.Black),
                    onPressed: () {
                       AutoRouter.of(context).navigate(const MenuComponentRoute());
                    },
                  ),
                ]
              : [],
        );
      },
      routes: [
        The1Route(),
        PlaceDetailRoute(),
        MenuComponentRoute(),
        MyOffersRoute()
      ],
    );
  }
}