import 'package:flutter/material.dart';
import 'package:flutter_codigo3_sp_2/pages/home_page.dart';
import 'package:flutter_codigo3_sp_2/utils/shared_preferences_global.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new SharedGlobal();
  await prefs.initSharedPreferencesGlobal();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
