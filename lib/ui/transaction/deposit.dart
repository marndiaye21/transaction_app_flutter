import 'package:flutter/material.dart';

const List<dynamic> operators = [
  {"image": "assets/images/om.png", "text": "Orange Money"},
  {"image": "assets/images/wave.jpeg", "text": "Wave"},
  {"image": "assets/images/bank.png", "text": "Compte bancaire"},
];

class DepositPage extends StatefulWidget {
  const DepositPage({super.key});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  dynamic currentValue = operators.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            AppBar(),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey[50]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Compte : ",
                        style: TextStyle(fontSize: 22),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: DropdownButton<dynamic>(
                            alignment: Alignment.centerLeft,
                            value: currentValue,
                            icon: const Icon(Icons.keyboard_arrow_down,
                                color: Colors.black),
                            style: const TextStyle(color: Colors.white70),
                            underline: Container(),
                            borderRadius: BorderRadius.circular(20),
                            selectedItemBuilder: (BuildContext context) {
                              return operators.map((operator) {
                                return DropdownMenuItem(
                                  value: operator,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                        AssetImage(operator['image']),
                                        radius: 15,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        operator['text'],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                );
                              }).toList();
                            },
                            items: operators.map((operator) {
                              return DropdownMenuItem(
                                value: operator,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundImage:
                                        AssetImage(operator['image']),
                                        radius: 15),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      operator['text'],
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: (dynamic value) {
                              setState(() {
                                currentValue = value;
                              });
                            }),
                      )
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: TextField(
                        cursorColor: const Color(0XFF000000),
                        decoration: InputDecoration(
                            labelStyle: const TextStyle(color: Colors.black),
                            prefixText: "+221 ",
                            labelText: "Téléphone",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            filled: true,
                            fillColor: Colors.white),
                      )),
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: TextField(
                        cursorColor: const Color(0XFF000000),
                        decoration: InputDecoration(
                            suffixText: 'Fcfa',
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: "Montant",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            filled: true,
                            fillColor: Colors.white),
                      )),
                  Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(top: 40),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all(Colors.cyan[800]),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // Change your radius here
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Valider",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
