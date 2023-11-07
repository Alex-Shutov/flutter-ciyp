import 'package:flutter/material.dart';
import 'package:pocket/utils/extensions.dart';



class AppColors extends Color{
  AppColors(super.value);

  static Color get Black => Colors.black;
  static Color get White => const Color(0xFFecf0f1);
  
  static Color get  MediumBlue => const Color.fromRGBO(116, 121, 253, 1);

  static Color get  DarkBlue => const Color.fromRGBO(65, 39, 227, 1);

  static Color get  Pink => const Color.fromRGBO(246, 154, 227, 1);

  static Color get  Blue => const Color.fromRGBO(33, 149, 255, 1);

  static Color get LightBlue => const Color.fromRGBO(122, 215, 255, 1);

  static Color get  Purple => const Color.fromRGBO(139, 29, 249, 1);

  static Color get  DarkPurple => const Color.fromRGBO(57, 15, 91, 1);

  static Color get  LightPurple => const Color.fromRGBO(228, 209, 243, 1);

  static Color get BlueGradient => const Color.fromRGBO(132, 141, 245, 1);

  static Color get PurpleGradient => const Color.fromRGBO(160, 80, 241, 1);
                              // Color.fromRGBO(160, 80, 241, 1)

  // static Color get Header_one_purple => const Color.fromRGBO(57, 15, 91, 1);
}