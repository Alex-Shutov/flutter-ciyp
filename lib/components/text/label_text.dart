import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/theme/theme_service.dart';

class LabelText extends StatelessWidget {
  final String text;

const LabelText({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final textTheme = GetIt.I.get<ThemeService>().lightTheme.textTheme;
    return Text(text,style: textTheme.displaySmall);
  }
}