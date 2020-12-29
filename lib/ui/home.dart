import 'package:fire/common/Global.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 主页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var listWidgets = List<Widget>();
    for (var i = 0; i < 20; i++) {
      listWidgets.add(Container(
        height: 50,
        color: Colors.amber[i * 50],
        child: Center(child: Text("Item $i")),
      ));
    }

    for (var temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
      print('$j');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(Global.appName),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("toast"),
                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: listWidgets,
      ),
    );
  }
}
