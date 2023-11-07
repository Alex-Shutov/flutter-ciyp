import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginNameForm extends StatelessWidget {


const LoginNameForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Form(child: Container(child: Column(children: [
      CustomFormInput(hintText: 'Имя',label: 'Введите свое имя',),
      CustomFormInput(hintText: 'Фамилия'),
    ])));
  }
}