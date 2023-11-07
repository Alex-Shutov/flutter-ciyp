import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/components/buttons/buttons/category_button.dart';
import 'package:pocket/components/buttons/buttons/login_button_next.dart';
import 'package:pocket/components/buttons/checkboxes/app_checkbox.dart';
import 'package:pocket/components/containers/category_container.dart';
import 'package:pocket/components/forms/login_pass_credentials.dart';
import 'package:pocket/models/category_model.dart';
import 'package:pocket/pages/login/base_auth.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/app_store.dart';

@RoutePage()
class AuthPage10 extends StatelessWidget {
AuthPage10({ Key? key }) : super(key: key);

 final _appStore = GetIt.I.get<AppStore>();

  @override
  Widget build(BuildContext context){
    const route = HomeRoute();
    const categoryAssetPath = 'assets/images/categories/';
    return BaseAuth(
        headerText: 'Создать \nАккаунт',
        afterCentredChildHeight: 125,
        beforeFormHeight: 80,
        afterFormHeight: 20,
        actionButton: LoginButtonNext(route: route, onPressed: ()=>_appStore.login()),
        centredChild: CategoryContainer(
          categoryButtons: [
            CategoryModel('Рестораны', 'restaraunt'),
            CategoryModel('Шоппинг','shop'),
            CategoryModel('Музеи','museum'),
            CategoryModel('Театры','theathre'),
            CategoryModel('Кино','cinema'),
            CategoryModel('Концерты','music'),
          ],
        ));
  }
}