import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';
import 'package:pocket/components/text/label_text.dart';

class LoginForm extends StatelessWidget {
  final Widget? widgetTop;
  
  final Widget? widgetBottom;

const LoginForm({ Key? key, this.widgetTop, this.widgetBottom }) : super(key: key);

  
  @override
  Widget build(BuildContext context){
    return Form(child: Container(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
      if(widgetTop !=null) widgetTop!,
      CustomFormInput(hintText: 'Логин'),
      CustomFormInput(hintText: 'Пароль'),
      if(widgetBottom !=null) widgetBottom!,
    ])));
  }
}