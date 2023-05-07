import 'package:flutter/material.dart';
import 'package:metro_appl/menu_page.dart';
import 'package:metro_appl/setting_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, MenuPage.id);
            },
            icon: const Icon(
              Icons.menu,
            )),
        title: const Text(
          "Asosiy",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Container(
          height: 1000,
          width: 400,
          decoration:const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/image1.jpg')),
          ),
        ),
      ),
    );
  }
}
