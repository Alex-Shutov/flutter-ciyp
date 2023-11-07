import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';

class GradientAssetButton extends StatelessWidget {
  final onPressed;
  
  final text;

  const GradientAssetButton(
    {Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).elevatedButtonTheme.style;

    // Figma Flutter Generator Rectangle10Widget - RECTANGLE
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 185,
          height: 45,
          child: Center(child: Text(text,style: TextStyle(color: AppColors.White),)),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            image: DecorationImage(
                image: AssetImage('assets/images/Rectangle10.png'),
                fit: BoxFit.fitWidth),
          )),
    );
  }
}
