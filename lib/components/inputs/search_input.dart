import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket/theme/theme_constants.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    // Figma Flutter Generator FdsWidget - GROUP
    return Form(
      child: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
          child: TextFormField(
            
              decoration: InputDecoration(
                enabledBorder: theme.inputDecorationTheme.enabledBorder?.copyWith(borderSide: BorderSide.none),
                  hintText: 'Поиск',
                  filled: true,
                  fillColor: AppColors.White,
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 14),
                      suffixIcon: Icon(Icons.mic, color: AppColors.Black, size: 36),
                  prefixIcon: Icon(Icons.search, color: AppColors.Black, size: 36,))))
    );
  }
}
