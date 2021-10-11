import 'package:shared_preferences/shared_preferences.dart';
class SharedGlobal {
  static final SharedGlobal _intancia = new SharedGlobal._internal();
  SharedGlobal._internal();
  factory SharedGlobal() {
    return _intancia;
  }
  late SharedPreferences _prefs;
  initSharedPreferencesGlobal() async {
    _prefs = await SharedPreferences.getInstance();
  }
  set name(String value) {
    _prefs.setString("name", value);
  }
  String get name {
    return _prefs.getString("name") ?? "No name";
  }
  set address(String value) {
    _prefs.setString("address", value);
  }
  String get address {
    return _prefs.getString("address") ?? "No address";
  }
  set darkMode(bool value) {
    _prefs.setBool("darkMode", value);
  }
  bool get darkMode {
    return _prefs.getBool("darkMode") ?? false;
  }
  set gender(int value) {
    _prefs.setInt("gender", value);
  }
  int get gender {
    return _prefs.getInt("gender") ?? 1;
  }
}
