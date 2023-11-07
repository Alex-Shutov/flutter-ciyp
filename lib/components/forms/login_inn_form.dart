import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginInnForm extends StatelessWidget {
final Widget? widgetTop;
  
  final Widget? widgetBottom;

const LoginInnForm({ Key? key, this.widgetTop, this.widgetBottom }) : super(key: key);

  
  @override
  Widget build(BuildContext context){
    return Form(child: Container(child: Column(children: [
      if(widgetTop !=null) widgetTop!,
      CustomFormInput(hintText: 'ИНН', label: 'Укажите ИНН организации',),
      if(widgetBottom !=null) widgetBottom!,
    ])));
  }
}