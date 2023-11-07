import 'package:get_it/get_it.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/app_store.dart';
import 'package:pocket/store/theme_store/theme_store.dart';
import 'package:pocket/theme/theme_repository.dart';
import 'package:pocket/theme/theme_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
final locator = GetIt.I;

void setupLocator() async{
  locator.registerLazySingleton<AppStore>(()=>AppStore());
  locator.registerFactory<ThemeService>(()=>ThemeService(ThemeRepository()));
  locator.registerSingleton<ThemeStore>(ThemeStore(ThemeService(ThemeRepository())));
  locator.registerSingleton<AppRouter>(AppRouter());
  // locator.registerSingleton(SharedPreferences.getInstance());
  locator.registerSingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());
}



