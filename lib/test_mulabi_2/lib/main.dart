import 'package:flutter/material.dart';
//import 'package:test_mulabi_2/view/tool_view/adhkar_view.dart';
import 'package:get/get.dart';
import 'package:test_mulabi_2/view/tool_view/adhkar_view.dart';
//import 'package:test_mulabi_2/view/tool_view/haramain_live_view.dart';
//import 'package:test_mulabi_2/view/tool_view/quran_view.dart';
//import 'package:test_mulabi_2/view/tool_view/misbaha_view.dart';
//import 'package:test_mulabi_2/view/authView/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: AdhkarPage());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, //
      title: 'أذكار وأدعية',
      home: AdhkarView(),
    );
  }
}
