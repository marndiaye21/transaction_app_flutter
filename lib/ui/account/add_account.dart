import 'package:flutter/material.dart';

class AddAccount extends StatelessWidget {
  AddAccount({super.key});

  final List<String> listAccount = <String>[
    'Orange Money',
    'Wave',
    'Compte bancaire',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: MediaQuery.of(context).viewInsets.bottom),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(28), topLeft: Radius.circular(28)),
        color: Color(0XFF3F7373),
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            IconData(0xe040, fontFamily: 'MaterialIcons'),
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
          SizedBox(
            width: double.infinity,
            child: DropdownButton(
                selectedItemBuilder: (BuildContext context) {
                  return listAccount
                      .map((typeAccount) => DropdownMenuItem(
                            value: typeAccount,
                            child: Text(
                              typeAccount,
                              style: TextStyle(color: Colors.white70),
                            ),
                          ))
                      .toList();
                },
                alignment: Alignment.centerLeft,
                value: "Orange Money",
                icon: const Icon(Icons.arrow_downward, color: Colors.white70),
                style: const TextStyle(color: Colors.white70),
                items: listAccount
                    .map((typeAccount) => DropdownMenuItem(
                          value: typeAccount,
                          child: Text(
                            typeAccount,
                            style: TextStyle(color: Colors.black),
                          ),
                        ))
                    .toList(),
                onChanged: (String? value) {}),
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
          ),
        ],
      ),
    );
  }
}
