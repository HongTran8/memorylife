import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memorylife/ui/home_page.dart';

class ManCho1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                          top: 60.0,
                          left: 20,
                          right: 20,
                          child: Center(
                            child: Text("Memory Life", style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                          )
                      ),

                      Positioned(
                          top: 150,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              height: 230,
                              child: Image.asset("assets/man_cho1.png", fit: BoxFit.fill,),
                            ),
                          )
                      ),

                      Positioned(
                        top: 430.0,
                        left: 20,
                        right: 20,
                        child: Center(
                            child: Column(
                              children: <Widget>[
                                Text("Nhật kí cá nhân", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w700),),
                                SizedBox(height: 30,),
                                Text("Nhật kí của bạn, người đồng hành của bạn", style: TextStyle(color: Colors.black, fontSize: 17),),
                              ],
                            )
                        ),
                      ),

                      Positioned(
                          bottom: 60,
                          left: 115,
                          right: 115,
                          child: Center(
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                textColor: Colors.white,
                                color: Colors.blue,
                                onPressed: () {
                                  Route route = MaterialPageRoute(builder: (context) => ManCho2());
                                  Navigator.push(context, route);
                                },
                                child: Row(
                                  children: <Widget>[
                                    Text('Bắt đầu  ', style: TextStyle(fontSize: 18),),
                                    Container(

                                      width: 25,
                                      height: 18,
                                      child: Image.asset("assets/start_ico.png"),
                                    )
                                  ],
                                )
                            ),
                          )
                      )
                    ],
                  ),
                )
            );
          },
        ),
      ),
    );
  }
}

class ManCho2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String pin;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 60.0,
                        left: 20,
                        right: 20,
                        child: Center(
                          child: Text("Memory Life", style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        )
                    ),

                    Positioned(
                        top: 150,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            height: 230,
                            child: Image.asset("assets/man_cho2.png", fit: BoxFit.fill,),
                          ),
                        )
                    ),

                    Positioned(
                      top: 430.0,
                      left: 20,
                      right: 20,
                      child: Center(
                          child: Column(
                            children: <Widget>[
                              Text("Người bạn đồng hành", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w700),),
                              SizedBox(height: 30,),
                              Text("Nhật ký của bạn, lưu giữ những khoảnh khắc trong cuộc sống, hành trình, tâm sự riêng tư", style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.center,),
                            ],
                          )
                      ),
                    ),

                    Positioned(
                        bottom: 60,
                        left: 110,
                        right: 110,
                        child: Center(
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              textColor: Colors.white,
                              color: Colors.blue,
                              onPressed: () {
                                Route route = MaterialPageRoute(builder: (context) => ManCho3());
                                Navigator.push(context, route);
                              },
                              child: Row(
                                children: <Widget>[
                                  Text('Tiếp theo', style: TextStyle(fontSize: 18),),
                                  Container(
                                    margin: EdgeInsets.only(left: 3),
                                    width: 25,
                                    height: 18,
                                    child: Image.asset("assets/start_ico.png"),
                                  )
                                ],
                              )
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ManCho3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String pin;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 60.0,
                        left: 20,
                        right: 20,
                        child: Center(
                          child: Text("Memory Life", style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        )
                    ),

                    Positioned(
                        top: 150,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            height: 230,
                            child: Image.asset("assets/man_cho3.png", fit: BoxFit.fill,),
                          ),
                        )
                    ),

                    Positioned(
                      top: 430.0,
                      left: 20,
                      right: 20,
                      child: Center(
                          child: Column(
                            children: <Widget>[
                              Text("An toàn và bảo mật", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w700),),
                              SizedBox(height: 30,),
                              Text("Nhật ký của bạn thuộc về bạn. Thêm mật khẩu để lưu giữ nhật ký ở chế độ riêng tư", style: TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.center,),
                            ],
                          )
                      ),
                    ),

                    Positioned(
                        bottom: 60,
                        left: 20,
                        right: 20,
                        child: Center(
                          child: Container(
                            height: 35,
                            width: 170,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                textColor: Colors.white,
                                color: Colors.blue,
                                onPressed: () {

                                },
                                child: Row(
                                  children: <Widget>[
                                    Text('Tạo mật khẩu', style: TextStyle(fontSize: 18),),
                                    Container(
                                      margin: EdgeInsets.only(left: 3),
                                      width: 25,
                                      height: 18,
                                      child: Image.asset("assets/start_ico.png"),
                                    )
                                  ],
                                )
                            ),
                          )
                        )
                    ),

                    Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Center(
                          child: RichText(
                              text: TextSpan(
                                  text: 'Bỏ qua',
                                  style: TextStyle(
                                      color: Colors.red, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Route route = MaterialPageRoute(builder: (context) => MyHomePage(title: "Memory Life",));
                                      Navigator.push(context, route);
                                    }
                              )
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}