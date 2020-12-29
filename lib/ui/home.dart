import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 主页
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = new ScrollController();
  var showToTopBtn = true;

  @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 10 && !showToTopBtn) {
        setState(() {
          showToTopBtn = true;
        });
      } else if (_controller.offset >= 10 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        slivers: [
          SliverAppBar(
            expandedHeight: 256.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverFab Example"),
              background: Image.asset(
                "images/test_img.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (int index) => ListTile(title: Text("Item $index")),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "bottom");
              },
              child: Icon(Icons.add),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            SizedBox(), //中间位置空出
            IconButton(
              icon: Icon(Icons.business),
              onPressed: () {},
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
    );
  }
}
