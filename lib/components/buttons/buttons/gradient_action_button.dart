import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';

class GradientActionButton extends StatelessWidget {
  final Function() onPressed;

  final String text;

  const GradientActionButton(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    var alignment = (left: 0.1388913750648499, right: 0.87664859890937805);

    return GestureDetector(
        onTap: onPressed,
        child: Container(
            width: 107,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              gradient: LinearGradient(
                  begin: Alignment(alignment.left, alignment.right),
                  end: Alignment(-alignment.right, alignment.left),
                  colors: [AppColors.Blue, AppColors.LightBlue]),
            ),
            child: Center(
                child: Text(text, style: TextStyle(color: AppColors.White)))));
  }
}
