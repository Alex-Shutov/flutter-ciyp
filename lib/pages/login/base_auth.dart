import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pocket/components/containers/login_flow_Container.dart';
import 'package:pocket/components/containers/login_footer_Container.dart';
import 'package:pocket/components/text/header_text.dart';
import 'package:pocket/router/router.dart';

class BaseAuth extends StatelessWidget {
  final String? headerText;

  final double? beforeFormHeight;

  final Widget centredChild;

  final double? afterFormHeight;

  final Widget? actionButton;

  final bool isFirstLoginPage;

  final PageRouteInfo<dynamic> toRoute;
  
  final MainAxisAlignment? loginAlignment;
  
  final double afterCentredChildHeight;

  const BaseAuth(
      {Key? key,
      required this.afterCentredChildHeight,
      this.loginAlignment,
      this.headerText,
      this.beforeFormHeight,
      this.afterFormHeight,
      required this.centredChild,
      this.actionButton,
      this.isFirstLoginPage = false,
      this.toRoute = const AuthRoute1()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginFlowContainer(
        mainAxisAlignment: loginAlignment ?? MainAxisAlignment.start,
        children: [
          HeaderText(text: headerText ?? ''),
          Column(children: [
            SizedBox(height: beforeFormHeight),
            Center(child: centredChild),
            SizedBox(height: afterFormHeight),
            actionButton is Widget ? actionButton! : const SizedBox()
          ]),
          // GradientAssetButton(onPressed: ()=>context.navigateTo(const AuthRoute2()), text: 'Войти'),
          SizedBox(height: afterCentredChildHeight),
          Center(
              child: isFirstLoginPage
                  ? LoginFooterContainer(
                      leftText: 'Нет аккаунта?',
                      text: 'Создать',
                      onPressed: () => context.navigateTo(const AuthRoute2()))
                  : LoginFooterContainer(
                      leftText: 'Есть аккаунт?',
                      text: 'Войти',
                      onPressed: () => context.navigateTo(toRoute),
                    ))
        ]);
  }
}
