import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transfert/models/customer.dart';
import 'package:transfert/providers/custumer_provider.dart';

class ListCustomer extends StatelessWidget {
  ListCustomer({super.key});

  List<Color> colors = [
    Colors.blueAccent,
    Colors.blue,
    const Color(0xFFEEA243),
    const Color(0XFFF1D9A7),
    const Color(0xFFC62E65),
    const Color(0xFF624763),
    const Color(0xFFD6E3F8),
    const Color(0xFF9D5C63),
    const Color(0xFFE4BB97),
    const Color(0xFF584B53)
  ];

  @override
  Widget build(BuildContext context) {
    CustomerProvider customerProvider = context.read<CustomerProvider>();
    customerProvider.getCustomers();

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        title: const Text("Clients"),
        centerTitle: true,
      ),
      body: Consumer<CustomerProvider>(
        builder: (context, customer, child) {
          return customer.customers.isEmpty ? const Center(child: CircularProgressIndicator()) : ListView.builder(
              itemCount: customerProvider.customers.length,
              itemBuilder: (context, index) {
                Random random = Random();
                int randomNumber = random.nextInt(colors.length);
                return Container(
                  margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 2)
                      ]),
                  child: ListTile(
                    title: Text(
                      customerProvider.customers[index].fullname as String,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    trailing:
                        Text(customerProvider.customers[index].phone as String),
                    leading: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: colors[randomNumber]),
                      child: Center(
                          child: Text(
                              customerProvider.customers[index].fullname![0],
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.white))),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
