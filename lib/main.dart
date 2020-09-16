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
import 'package:memorylife/ui/home_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_){
    runApp(MyApp());
  }
  );
}

