import 'package:flutter/material.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginCredentialsInstitution extends StatelessWidget {
const LoginCredentialsInstitution({ Key? key }) : super(key: key);
  


  
  @override
  Widget build(BuildContext context){
    return Form(child: Container(child: Column(children: [
      CustomFormInput(hintText: 'Логин', label: 'Укажите название и адресс вашей организации/заведения',),
      CustomFormInput(hintText: 'Пароль'),
    ])));
  }
}