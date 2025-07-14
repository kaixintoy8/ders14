import 'package:ders14/widgets/filter_menu_with_chips.dart';
import 'package:ders14/widgets/liste_ornek.dart';
import 'package:ders14/widgets/setting_expansion_menu.dart';
import 'package:ders14/widgets/simple_image_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterMenuWithChips(),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  int buttomIndex = 0;
  var keyList = PageStorageKey("key liste");
  var keyExpansion = PageStorageKey("key expansion");
  late List<Widget> sayfalar;
  @override
  void initState() {
    super.initState();
    sayfalar = [
      ListeOrnek(listKey: keyList),
      //ExpansiontilePage(expansionKey: keyExpansion),
      SettingExpansionMenu(),
      //PageviewPage(),
      SimpleImageSlider(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Araçları"),
        backgroundColor: const Color.fromARGB(255, 113, 9, 2),
        foregroundColor: Colors.white,
      ),
      body: sayfalar[buttomIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown,
        unselectedItemColor: const Color.fromARGB(121, 121, 85, 72),
        currentIndex: buttomIndex,
        onTap: (value) {
          setState(() {
            buttomIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Liste"),
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_less_outlined),
            label: "Expansion",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_less_outlined),
            label: "PageView",
          ),
        ],
      ),
    );
  }
}
