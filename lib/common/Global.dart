import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class Global {
  static var isLogin = false;

  static String appName = "GlobalAppName";

  static void init() async {
    getPackageInfo();
  }

  static Future<PackageInfo> getPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    appName = packageInfo.appName;
    return packageInfo;
  }
}

// App主题色
const AppThemes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];
