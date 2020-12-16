import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// App主题色
const AppThemes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static SharedPreferences sharedPreferences;

  static Future init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
