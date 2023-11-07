import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/app_text_button.dart';
import 'package:pocket/components/buttons/buttons/gradient_action_button.dart';
import 'package:pocket/components/buttons/buttons/gradient_asset_button.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/components/containers/login_flow_Container.dart';
import 'package:pocket/components/containers/spaced_centred_container.dart';
import 'package:pocket/components/containers/login_footer_Container.dart';
import 'package:pocket/components/forms/login_form.dart';
import 'package:pocket/components/text/header_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/utils/enums/scaffold_gradient_alignment.dart';

@RoutePage()
class AuthPage1 extends StatelessWidget {
  const AuthPage1({Key? key}) : super(key: key);

  build(ctx) => LoginFlowContainer(
        children: [
          HeaderText(text: 'Войти \nВ аккаунт'),
          Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: LoginForm(
                  widgetBottom: AppTextButton(
                    onPressed: () => ctx.navigateTo(AuthRoute10()),
                    text: 'Забыли пароль?',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          GradientAssetButton(
              onPressed: () => ctx.navigateTo(AuthRoute2()), text: 'Войти'),
          SizedBox(height: 170),
          Center(
              child: LoginFooterContainer(
            leftText: 'Нет аккаунта?',
            text: 'Создать',
            onPressed: () => ctx.navigateTo(AuthRoute2()),
          ))
        ],
      );
}
