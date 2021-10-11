

import 'package:shared_preferences/shared_preferences.dart';

class SharedGlobal{

  static final SharedGlobal _intancia = new SharedGlobal._internal();
  SharedGlobal._internal();

  factory SharedGlobal(){
    return _intancia;
  }

  late SharedPreferences _prefs;

  initSharePreferencesGlobal() async{
    _prefs = await SharedPreferences.getInstance();
  }

}