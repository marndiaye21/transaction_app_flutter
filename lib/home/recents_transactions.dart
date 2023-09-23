import 'package:flutter/material.dart';
import 'package:transfert/account/list_account.dart';
import 'package:transfert/recent_transaction/recent_transaction.dart';

class RecentTransactionSection extends StatelessWidget {
  RecentTransactionSection({super.key});

  List<Map<String, dynamic>> transactions = [
    {"clientName": "Kha Padding", "amount": 5000, "date": "12 Sep 2023"},
    {"clientName": "Nabou Dash", "amount": 550, "date": "03 Sep 2023"},
    {"clientName": "Mamadou Diallo", "amount": 7500, "date": "10 Sep 2023"},
    {"clientName": "Thioro guounor", "amount": 150, "date": "11 Sep 2023"},
    {"clientName": "Bassirou Seye", "amount": 250000, "date": "15 Sep 2023"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Récents",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87)),
               InkWell(
                 onTap: () {
                   Navigator.of(context).push(
                     MaterialPageRoute(
                       builder: (context) => const RecentTransaction()
                     ),
                   );
                 },
                 child:  Row(
                   children: [
                     Text("Voir plus",
                         style: TextStyle(
                             fontSize: 13,
                             decoration: TextDecoration.underline,
                             color: Colors.cyan[800])),
                     const SizedBox(width: 3),
                     Icon(
                       Icons.arrow_forward_ios,
                       size: 12,
                       color: Colors.cyan[800],
                     )
                   ],
                 ),
               )
              ],
            )),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: transactions.map((transaction) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 5),
              padding: const EdgeInsets.all(10),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                color: Colors.cyan[800],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${transaction['clientName']}",
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "${transaction['amount']} Fcfa",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          transaction['date'],
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xBAD9D600)),
                        ),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              color: Color(0xBAD9D600), shape: BoxShape.circle),
                          child: Icon(Icons.arrow_forward,
                              color: Colors.cyan[800], size: 20),
                        )
                      ],
                    )
                  ]),
            );
          }).toList()),
        )
      ],
    );
  }
}
