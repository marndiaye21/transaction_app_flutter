import 'package:flutter/material.dart';
import 'package:transfert/home/recents_transactions.dart';
import 'package:transfert/home/service_section.dart';
import 'package:transfert/home/transaction_section.dart';
import 'package:transfert/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
        title: const Text("Transaction",
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecentTransactionSection(),
            const ServiceSection(),
            const TransactionSection(),
          ],
        ),
      ),
    );
  }
}
