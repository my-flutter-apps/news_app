import 'package:news_app/config/local/shared/preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Preferences {
  Preferences._();

  static SharedPreferences? _sharedPreferences;

  static Future<void> sharedPreferences() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
  }


  static Future<void> setTheme(String newValue) async {
    _sharedPreferences?.setString(PreferencesKeys.theme, newValue);
  }

  static String? get getTheme => _sharedPreferences?.getString(PreferencesKeys.theme);


  static Future<void> setCounter(int newValue) async {
    _sharedPreferences?.setInt(PreferencesKeys.counter, newValue);
  }

  static int? get getCounter => _sharedPreferences?.getInt(PreferencesKeys.counter);
}
