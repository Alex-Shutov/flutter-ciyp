import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pocket/components/buttons/buttons/login_button_next.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/components/containers/login_flow_Container.dart';
import 'package:pocket/components/containers/login_footer_Container.dart';
import 'package:pocket/components/containers/spaced_centred_container.dart';
import 'package:pocket/components/forms/login_date_form.dart';
import 'package:pocket/components/forms/login_name_form.dart';
import 'package:pocket/components/text/header_text.dart';
import 'package:pocket/router/router.dart';

@RoutePage()
class AuthPage4 extends StatelessWidget {
const AuthPage4({ Key? key }) : super(key: key);

 @override
  Widget build(BuildContext context) => LoginFlowContainer(mainAxisAlignment: MainAxisAlignment.end, children: [
        const HeaderText(text: 'Создать \nАккаунт'),
        const Column(children: [
          SizedBox(height: 80),
          Center(child: LoginDateForm( textTop: 'Укажите свою дату рождения и пол')),
          SizedBox(height: 20),
          LoginButtonNext(route: AuthRoute6()),
        ]),
        // GradientAssetButton(onPressed: ()=>context.navigateTo(const AuthRoute2()), text: 'Войти'),
        const SizedBox(height: 180),
        Center(
            child: LoginFooterContainer(
          leftText: 'Есть аккаунт?',
          text: 'Войти',
          onPressed: () => context.navigateTo(const AuthRoute1()),
        ))
      ]);
}