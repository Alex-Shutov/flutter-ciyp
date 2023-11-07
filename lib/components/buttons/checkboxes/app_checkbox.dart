import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';

class AppCheckbox extends StatefulWidget {
final String title;

const AppCheckbox({ Key? key, required this.title }) : super(key: key);

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {

  bool checkboxValue = false;
  
  @override
  Widget build(BuildContext context){
      var theme = Theme.of(context);
    return CheckboxListTile ( controlAffinity: ListTileControlAffinity.leading,title:Text(widget.title, style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.DarkPurple),),value:checkboxValue, onChanged: (val){
      setState(() {
        checkboxValue = !checkboxValue;
      });
    } ,);
  }
}