import 'package:flutter/material.dart';

class ListeOrnek extends StatefulWidget {
  final PageStorageKey listKey;
  const ListeOrnek({super.key, required this.listKey});

  @override
  State<ListeOrnek> createState() => _ListeOrnekState();
}

class _ListeOrnekState extends State<ListeOrnek> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 300,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(10),
            color: index % 2 == 0
                ? Colors.brown.shade100
                : const Color.fromARGB(255, 87, 7, 1),
            child: Center(child: Text("Kutu $index")),
          ),
        );
      },
    );
  }
}
