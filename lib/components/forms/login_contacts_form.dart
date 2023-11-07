import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginContactsForm extends StatelessWidget {
const LoginContactsForm({ Key? key }) : super(key: key);

 @override
  Widget build(BuildContext context){
    return Form(child: Column(children: [
      CustomFormInput(hintText: 'Электронная почта',label: 'Укажите адресс электронной почты и номер телефона',),
      CustomFormInput(hintText: 'Номер телефона'),
    ]));
  }
}