import 'package:flutter/material.dart';
import 'package:metro_appl/home_page.dart';
import 'package:metro_appl/setting_page.dart';

class MenuPage extends StatefulWidget {
  static const String id = "menu_page";

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: 415,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.gazeta.uz/media/img/2020/08/iflkUU15987032581387_l.jpg")),
        ),
      ),
      Container(
          height: MediaQuery.of(context).size.height * 0.78,
          width: 415,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pushReplacementNamed(context, HomePage.id);
                        }, icon: const Icon(Icons.photo_library_rounded,color: Colors.lightBlueAccent,)),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Galereya",
                          style: TextStyle(color: Colors.black,fontSize: 18),
                        )
                      ],
                    )),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, SettingPage.id);
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.lightBlueAccent,
                          )),
                      const SizedBox(),
                      const Text("Sozlamalar",style: TextStyle(color: Colors.black,fontSize: 18),)
                    ],
                  ) 
                ),
                Container(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      children: const [
                        SizedBox(width: 12,),
                        Icon(
                          Icons.share,
                          color: Colors.lightBlueAccent,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Ulashish",
                          style: TextStyle(color: Colors.black,fontSize: 18),
                        )
                      ],
                    )),
                Container(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      children: const [
                        SizedBox(width: 12,),
                        Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.lightBlueAccent,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Ilovani baholang!",
                          style: TextStyle(color: Colors.black,fontSize: 18),
                        )
                      ],
                    )),
                Container(
                    width: double.infinity,
                    height: 48,
                    child: Row(
                      children: const [
                        SizedBox(width: 12,),
                        Icon(
                          Icons.info,
                          color: Colors.lightBlueAccent,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Ilova haqida",
                          style: TextStyle(color: Colors.black,fontSize: 18),
                        )
                      ],
                    )),
              ],
            ),
          ))
    ]));
  }
}
