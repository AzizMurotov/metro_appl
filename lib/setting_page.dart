import 'package:flutter/material.dart';
import 'package:metro_appl/home_page.dart';
class SettingPage extends StatefulWidget {
  static const String id = "setting_page";
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, HomePage.id);
        }, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Asosiy",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            child: const Center(
              child:
               Text(
                "Til",
                 style: TextStyle(fontSize: 25),
              ),
            )
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: const Center(
              child:
               Text(
                "Foydalanish shartlari",
                 style: TextStyle(fontSize: 25),
              ),
            )
          ),
        ],
      )
    );
  }
}
