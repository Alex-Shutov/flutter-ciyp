import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pocket/components/buttons/buttons/login_button_next.dart';
import 'package:pocket/components/forms/login_contacts_form.dart';
import 'package:pocket/components/forms/login_inn_form.dart';
import 'package:pocket/pages/login/base_auth.dart';
import 'package:pocket/router/router.dart';


@RoutePage()
class AuthPage8 extends StatelessWidget {
const AuthPage8({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const route = AuthRoute9();
    return const BaseAuth(
      headerText: 'Создать \nАккаунт',
      afterCentredChildHeight: 160,
      beforeFormHeight: 80,
      afterFormHeight: 20,
      actionButton: LoginButtonNext(route: route ),
      centredChild: LoginInnForm()
      );
  }
}