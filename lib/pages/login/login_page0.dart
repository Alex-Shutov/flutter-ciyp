import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/components/containers/spaced_centred_container.dart';
import 'package:pocket/components/text/header_text.dart';
import 'package:pocket/pages/home_page.dart';
import 'package:pocket/pages/page1.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/app_store.dart';
import 'package:pocket/store/theme_store/theme_store.dart';
import 'package:pocket/utils/enums/scaffold_gradient_alignment.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MainLoginPage extends StatefulWidget {
  @override
  State<MainLoginPage> createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  final _appStore = GetIt.I.get<AppStore>();

  var themeStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    themeStore ??= Provider.of<ThemeStore>(context);
  }

  // var _themeManager = GetIt.I.get<ThemeService>();
  // @override
  @override
  build(ctx) => Scaffold(
          body: AutoTabsScaffold(
            extendBodyBehindAppBar:true,
                appBarBuilder: ((context, _) => AppBar(
                  forceMaterialTransparency: true,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => AutoRouter.of(context).navigate(AuthRoute1()),
              ),
            )),
                routes: const [
          AuthRoute1(),
          AuthRoute2(),
          AuthRoute3(),
          AuthRoute4(),
          AuthRoute5(),
          AuthRoute6(),
          AuthRoute7(),
          AuthRoute8(),
          AuthRoute9(),
          AuthRoute10(),
                ],
              ));
  // build(ctx) => Scaffold(
  //       appBar: (AppBar(forceMaterialTransparency: true)),
  //       body: CentredContainer(
  //           child: Column(
  //         children: [
  //           HeaderText(text: 'Войти \nв аккаунт'),
  //         ],
  //       )),
  //     );
}
