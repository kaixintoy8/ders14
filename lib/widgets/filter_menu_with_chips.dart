import 'package:flutter/material.dart';

class FilterMenuWithChips extends StatefulWidget {
  const FilterMenuWithChips({super.key});

  @override
  State<FilterMenuWithChips> createState() => _FilterMenuWithChipsState();
}

class _FilterMenuWithChipsState extends State<FilterMenuWithChips> {
  final Map<String, List<String>> filters = {
    "Renk": ["Kırmızı", "Mavi", "Yeşil"],
    "Beden": ["S", "M", "L"],
    "Marka": ["Nike", "Adidas", "Puma"],
  };
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
