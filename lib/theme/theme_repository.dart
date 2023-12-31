import 'dart:ui';

import 'package:pocket/theme/i_theme_repository.dart';
import 'package:pocket/theme/theme_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository implements IThemeRepository {
  @override
  Future<void> setThemeKey(Brightness brightness) async {
    (await SharedPreferences.getInstance()).setString(
      ThemeKey.THEME,
      brightness == Brightness.light ? "light" : "dark",
    );
  }

  @override
  Future<String?> getThemeKey() async {
    return (await SharedPreferences.getInstance()).getString(ThemeKey.THEME);
  }
}