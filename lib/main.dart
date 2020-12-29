import 'package:fire/common/Global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ui/home.dart';

void main() => runApp(new MyApp());

// void main() {
//   debugPaintSizeEnabled = false; // 显示布局边界
//   Global.init();
//   runApp(new MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FIRE",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
