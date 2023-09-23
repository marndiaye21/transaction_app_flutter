import 'package:flutter/material.dart';

class AddCustomer extends StatelessWidget {
  const AddCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(28), topLeft: Radius.circular(28)),
        color: Color(0XFF3F7373),
      ),
      width: double.infinity,
      height: 900,
      child: Column(
        children: [
          const Icon(
            IconData(0xe043, fontFamily: 'MaterialIcons'),
            size: 80,
            color: Colors.white70,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.white70))),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(right: 5, bottom: 5),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1, color: Colors.white70))),
                    child: const Icon(
                        IconData(0xe491, fontFamily: 'MaterialIcons'),
                        color: Colors.white70)),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Nom complet",
                      hintStyle: TextStyle(color: Colors.white70),
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ))
              ],
            ),
          ),
          SizedBox(height: 50),
          Container(
            height: 30,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.white70))),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(right: 5, bottom: 5),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1, color: Colors.white70))),
                    child: const Icon(
                        IconData(0xe4a2, fontFamily: 'MaterialIcons'),
                        color: Colors.white70)),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Téléphone",
                      hintStyle: TextStyle(color: Colors.white70),
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 30,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.white70))),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.only(right: 5, bottom: 5),
                    decoration: const BoxDecoration(
                        border: Border(
                            right:
                                BorderSide(width: 1, color: Colors.white70))),
                    child: const Icon(
                        IconData(0xe19f, fontFamily: 'MaterialIcons'),
                        color: Colors.white70)),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Numéro d'identité",
                      hintStyle: TextStyle(color: Colors.white70),
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Ajouter",
                style: TextStyle(color: Color(0XFF3F7373)),
              ),

            ),
          )
        ],
      ),
    );
  }
}
