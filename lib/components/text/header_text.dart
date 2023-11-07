import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/theme/theme_service.dart';
import 'package:pocket/utils/header_levels.dart';

class HeaderText extends StatelessWidget {
  final _text;
  const HeaderText({Key? key, required String text})
      : _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {

    final textTheme = GetIt.I.get<ThemeService>().lightTheme.textTheme.displayLarge;

    return SizedBox(
        height: 80,
        width: double.infinity,
        child: Text(
          '$_text',
          textAlign: TextAlign.left,
          style: textTheme?.copyWith(
            height: 1.4,
            // color: AppColors
          )
        ));
  }
}
