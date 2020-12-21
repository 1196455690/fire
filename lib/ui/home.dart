import 'package:flutter/material.dart';

/// 主页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //容器外填充
      margin: EdgeInsets.only(top: 50.0, left: 120.0),
      //卡片大小
      constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
      //背景装饰
      decoration: BoxDecoration(
          //背景径向渐变
          gradient: RadialGradient(
              colors: [Colors.red, Colors.orange],
              center: Alignment.topLeft,
              radius: .98),
          //卡片阴影
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0)
          ]),
      //卡片倾斜变换
      transform: Matrix4.rotationZ(.2),
      //卡片内文字居中
      alignment: Alignment.center,
      child: Text(
        "Flutter",
        style: TextStyle(color: Colors.white, fontSize: 40.0),
      ),
    );
    ;
  }
}
