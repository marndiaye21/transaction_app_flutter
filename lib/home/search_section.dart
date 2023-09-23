import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        style: const TextStyle(height:0.2),
        decoration: InputDecoration(
          hintText: "search",
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.black26,width: 3))),
      ),
    );
  }
}
