import 'dart:math';

import 'package:flutter/material.dart';

class PageviewPage extends StatefulWidget {
  const PageviewPage({super.key});

  @override
  State<PageviewPage> createState() => _PageviewPageState();
}

class _PageviewPageState extends State<PageviewPage> {
  bool yatayEksen = true;
  bool isPageSnapping = true;
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            scrollDirection: yatayEksen == true
                ? Axis.horizontal
                : Axis.vertical,
            //Dokunduğumuzda diğer sayfaya mı geçsin yoksa harekte göre kalsın mı
            pageSnapping: isPageSnapping,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.brown.shade200,
                child: Center(
                  child: Text(
                    "Sayfa 0",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.brown.shade400,
                child: Center(
                  child: Text(
                    "Sayfa 1",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.brown.shade600,
                child: Center(
                  child: Text(
                    "Sayfa 2",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.brown.shade800,
                child: Center(
                  child: Text(
                    "Sayfa 3",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: currentIndex == 2
                          ? null
                          : () {
                              pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("İleri"),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: currentIndex == 0
                          ? null
                          : () {
                              pageController.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("Geri"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Yatay eksende çalış"),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (value) {
                        setState(() {
                          yatayEksen = value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Page Snapping Değiştir"),
                    Checkbox(
                      value: isPageSnapping,
                      onChanged: (value) {
                        setState(() {
                          isPageSnapping = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
