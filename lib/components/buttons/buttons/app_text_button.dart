import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/theme/theme_service.dart';

class AppTextButton extends StatelessWidget {
  final String? leftText;
  
  final String? rightText;
  
  final Function() onPressed;
  
  final String text;


  AppTextButton({ Key? key,this.leftText,this.rightText,required this.onPressed, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final textTheme = Theme.of(context).textTheme.displayLarge;
    print(textTheme);
    return Row(
      
      children: [
      if(leftText !=null && leftText!.isNotEmpty) Flexible(child: Text(leftText!)),
      Flexible(child: TextButton(onPressed: onPressed, child: Text(text))),
      if(rightText !=null && rightText!.isNotEmpty) Flexible(child: Text(rightText!))
      ],
    );
  }
}