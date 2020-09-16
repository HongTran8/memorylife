import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:memorylife/ui/menu/tai_khoan.dart';
import 'package:memorylife/ui/menu/nhat_ki.dart';
import 'package:memorylife/ui/menu/lich.dart';
import 'package:memorylife/ui/menu/kho_anh.dart';
import 'package:memorylife/ui/menu/ban_do.dart';
import 'package:memorylife/ui/login.dart';
import 'package:memorylife/ui/pincode/new_pin.dart';
import 'package:memorylife/ui/man_cho/man_cho.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Life',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ManCho1(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOptions = [NhatKi(), Lich(), KhoAnh(), BanDo(), TaiKhoan()];
  Icon searchIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <IconButton>[
          new IconButton(
            icon: searchIcon,
            onPressed: (){},
          )
        ],
      ),
      body: _pageOptions[selectedPage],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset('assets/diary_icon.png', height: 35, width: 35,),
                      new Text('  MEMORY LIFE', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: Colors.cyanAccent),
                      ),
                    ]
                )
            ),

            ListTile(
              title: Text('Profile'),
              onTap: () {
                print("pro");
              },
            ),
            ListTile(
              title: Text('Cài đặt'),
              onTap: () {

              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Thêm nhật kí',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.blue,
        style: TabStyle.react,
        items: [
          TabItem(icon: Image.asset("assets/diary.png", color: selectedPage == 0
              ? Colors.blue
              : Colors.grey,
          ),
              title: 'Nhật kí'),

          TabItem(icon: Image.asset("assets/calendar.png", color: selectedPage == 1
              ? Colors.blue
              : Colors.grey,
          ), title: 'Lịch'),

          TabItem(icon: Image.asset("assets/card_image.png", color: selectedPage == 2
              ? Colors.blue
              : Colors.grey,
          ), title: 'Kho ảnh'),

          TabItem(icon: Image.asset("assets/map.png", color: selectedPage == 3
              ? Colors.blue
              : Colors.grey,
          ), title: 'Bản đồ'),

          TabItem(icon: Image.asset("assets/user.png", color: selectedPage == 4
              ? Colors.blue
              : Colors.grey,
          ), title: 'Tài khoản'),
        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i ){
          setState(() {
            selectedPage = i;
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
