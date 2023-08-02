import 'package:flutter/foundation.dart';
import 'package:shop_smart/core/utils/cache_helber.dart';

class ThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  static const themeApp = 'THEME_APP';

  ThemeProvider() {
    getTheme();
  }

  Future<void> saveTheme({required bool themeValue}) async {
    await CacheHelber.saveData(key: themeApp, value: themeValue);

    _darkTheme = themeValue;
    notifyListeners();
  }

  Future<bool> getTheme() async {
    _darkTheme = await CacheHelber.getData(key: themeApp);
    notifyListeners();
    return _darkTheme;
  }
}
