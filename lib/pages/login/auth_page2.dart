import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pocket/components/buttons/buttons/gradient_action_button.dart';
import 'package:pocket/components/buttons/buttons_container.dart';
import 'package:pocket/components/buttons/buttons/app_text_button.dart';
import 'package:pocket/components/buttons/buttons/gradient_asset_button.dart';
import 'package:pocket/components/containers/login_flow_Container.dart';
import 'package:pocket/components/containers/login_footer_Container.dart';
import 'package:pocket/components/forms/login_form.dart';
import 'package:pocket/components/spans/login_choose_span.dart';
import 'package:pocket/components/text/header_text.dart';
import 'package:pocket/router/router.dart';
import "../../components/containers/app_scaffold.dart";

import '../../components/containers/spaced_centred_container.dart';

@RoutePage()
class AuthPage2 extends StatelessWidget {
  const AuthPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      LoginFlowContainer(mainAxisAlignment: MainAxisAlignment.end, children: [
        const HeaderText(text: 'Создать \nАккаунт'),
        const Column(
          children: [
            SizedBox(height: 80),
            Center(child: LoginChooseSpan(text: 'Выберите способ регистрации')),
          ],
        ),
        const SizedBox(height: 20),
        // GradientAssetButton(onPressed: ()=>context.navigateTo(const AuthRoute2()), text: 'Войти'),
        ButtonsContainer(children: [
          OutlinedButton(
              onPressed: () => context.navigateTo(AuthRoute3()),
              child: const Text('Физ лицо')),
          GradientActionButton(
              onPressed: () => context.navigateTo(const AuthRoute3()),
              text: 'Юр лицо'),
        ]),
        const SizedBox(height: 340),
        Center(
            child: LoginFooterContainer(
          leftText: 'Есть аккаунт?',
          text: 'Войти',
          onPressed: () => context.navigateTo(const AuthRoute1()),
        ))
      ]);
}
