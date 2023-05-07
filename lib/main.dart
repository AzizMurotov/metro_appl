import 'package:flutter/material.dart';
import 'package:metro_appl/home_page.dart';
import 'package:metro_appl/menu_page.dart';
import 'package:metro_appl/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        MenuPage.id:(context)=>const MenuPage(),
        SettingPage.id:(context)=>const SettingPage(),
      },
    );
  }
}