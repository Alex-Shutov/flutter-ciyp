import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/dropdowns/app_dropdown_button.dart';
import 'package:pocket/components/inputs/custom_form_input.dart';

class LoginDateForm extends StatelessWidget {
  final String? textTop;

  const LoginDateForm({Key? key, this.textTop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Form(
      child: Column(
        children: [
          if(textTop is String) Text(textTop ?? '',style: theme.inputDecorationTheme.labelStyle),
          const Wrap(
            // spacing: 12,
            // runSpacing: 12,
            children: [
              Row(
                children: [
                  Expanded(flex:1, child: CustomFormInput(hintText: 'День')),
                  Expanded(flex:1,child: CustomFormInput(hintText: 'Месяц')),
                  Expanded(flex:1,child: CustomFormInput(hintText: 'Год')),
                ],
              ),
              Expanded(flex: 3, child: CustomFormInput(hintText: 'Пол'))
            ],
          ),
        ],
      ),
    );
  }
}
