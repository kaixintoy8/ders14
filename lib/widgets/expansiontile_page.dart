import 'package:flutter/material.dart';

class ExpansiontilePage extends StatefulWidget {
  final PageStorageKey expansionKey;
  const ExpansiontilePage({super.key, required this.expansionKey});

  @override
  State<ExpansiontilePage> createState() => _ExpansiontilePageState();
}

class _ExpansiontilePageState extends State<ExpansiontilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: widget.expansionKey,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey(index),
          title: Text("Başlık ${index + 1}"),
          leading: Icon(Icons.wb_sunny),
          //trailing: Sağ köşedeki iconu değiştirir
          initiallyExpanded: index == 0 ? true : false,
          children: [
            Container(
              height: 300,
              color: index % 2 == 0
                  ? const Color.fromARGB(255, 86, 7, 1)
                  : Colors.brown.shade100,
            ),
          ],
        );
      },
    );
  }
}
