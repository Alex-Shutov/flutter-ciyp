import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/pages/page1.dart';
import 'package:pocket/pages/page2.dart';
import 'package:pocket/store/theme_store/theme_store.dart';
import 'package:pocket/theme/theme_service.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  @override
  createState() => _State();
}

class _State extends State<HomePage> {

  var themeStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    themeStore ??= Provider.of<ThemeStore>(context);
  }
  // var _themeManager = GetIt.I.get<ThemeService>();
  @override
  build(ctx) => AutoTabsScaffold(
    extendBodyBehindAppBar: true,
    appBarBuilder:((context,_) =>  AppBar(
      forceMaterialTransparency:true
     )),
        routes: [
          The1Route(),
          // The2Route(),
          // The3Route(),
          // The4Route()
          
        ],
      );


}