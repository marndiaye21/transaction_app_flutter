import 'package:flutter/material.dart';
import 'package:transfert/ui/home/recents_transactions.dart';
import 'package:transfert/ui/home/search_section.dart';
import 'package:transfert/ui/home/service_section.dart';
import 'package:transfert/ui/home/transaction_section.dart';
import 'package:transfert/ui/widgets/drawer.dart';

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
        title: const Text("Home",
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold,fontSize: 20)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchSection(),
            RecentTransactionSection(),
            const ServiceSection(),
            const TransactionSection(),
          ],
        ),
      ),
    );
  }
}
