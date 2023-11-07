import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginPassCredentials extends StatelessWidget {
  final Widget? widgetTop;

  final Widget? widgetBottom;

  const LoginPassCredentials({Key? key, this.widgetTop, this.widgetBottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
            child: Column(children: [
      if (widgetTop != null) widgetTop!,
      CustomFormInput(hintText: 'Пароль', label: 'Создайте надёжный пароль',),
      CustomFormInput(hintText: 'Повторите пароль'),
      if (widgetBottom != null) widgetBottom!,
    ])));
  }
}
