import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';

class LoginChooseSpan extends StatelessWidget {
final String text;

const LoginChooseSpan({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var textTheme = Theme.of(context).textTheme.bodyMedium;

    return Text(text,style: textTheme?.copyWith(color: AppColors.DarkPurple),);
  }
}