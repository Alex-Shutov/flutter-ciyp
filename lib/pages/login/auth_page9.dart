import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/login_button_next.dart';
import 'package:pocket/components/buttons/checkboxes/app_checkbox.dart';
import 'package:pocket/components/forms/login_credentials_institution.dart';
import 'package:pocket/components/forms/login_inn_form.dart';
import 'package:pocket/components/forms/login_pass_credentials.dart';
import 'package:pocket/pages/login/base_auth.dart';
import 'package:pocket/router/router.dart';

@RoutePage()
class AuthPage9 extends StatefulWidget {
  const AuthPage9({Key? key}) : super(key: key);

  @override
  State<AuthPage9> createState() => _AuthPage9State();
}

class _AuthPage9State extends State<AuthPage9> {
  @override
  Widget build(BuildContext context) {
    const route = AuthRoute10();
    return const BaseAuth(
        headerText: 'Создать \nАккаунт',
        afterCentredChildHeight: 125,
        beforeFormHeight: 80,
        afterFormHeight: 20,
        actionButton: LoginButtonNext(route: route),
        centredChild: LoginPassCredentials(
          widgetBottom: AppCheckbox(title:'Показать пароль') ,
        ));
  }
}
