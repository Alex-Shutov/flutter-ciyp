import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pocket/theme/theme_constants.dart';

class CustomFormInput extends StatelessWidget {

const CustomFormInput({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    this.label,
  }) : super(key: key);
  final String hintText;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {

    var inputDecorationTheme = Theme.of(context).inputDecorationTheme;
    var labelTheme = Theme.of(context).inputDecorationTheme.labelStyle;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6),
      child: Column(
        children: [
          if(label!=null) 
              Padding(
                padding: const EdgeInsets.only(left: 22,bottom: 18),
                child: Flexible(child: Text(label!,style: labelTheme?.copyWith(color: AppColors.DarkPurple),)),
              ),
            
          TextFormField(
            
            style: TextStyle(color: AppColors.MediumBlue),
            inputFormatters: inputFormatters,
            validator: validator,
            decoration: (const InputDecoration()).applyDefaults(inputDecorationTheme).copyWith(
              hintText: hintText,
              alignLabelWithHint: false,
            ) ,
            // decoration: InputDecoration(
              
            //   enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(40.0),
            //     borderSide: BorderSide(
            //       width: 2,
            //     color: AppColors.MediumBlue, style: BorderStyle.solid
            //   )),
            //   focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(40.0),
            //     borderSide: BorderSide(
            //       width: 2,
            //     color: AppColors.DarkBlue, style: BorderStyle.solid
            //   )),
            //   hintText: hintText,
              
            //   hintStyle: TextStyle(color: AppColors.MediumBlue)
              // ),
          ),
        ],
      ),
    );
  }
}