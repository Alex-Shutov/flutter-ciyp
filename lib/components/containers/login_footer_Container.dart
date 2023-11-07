import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/app_text_button.dart';
import 'package:pocket/router/router.dart';

class LoginFooterContainer extends StatelessWidget {
  final String? leftText;
  
  final String? rightText;
  
  final String? text;
  
  final Function()? onPressed;

  const LoginFooterContainer({Key? key, this.leftText, this.rightText,this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      leftText: leftText,
      onPressed: onPressed ?? () => context.navigateTo(AuthRoute1()),
      text: text ?? 'Войти',
      rightText: rightText ,
    );
  }
}
