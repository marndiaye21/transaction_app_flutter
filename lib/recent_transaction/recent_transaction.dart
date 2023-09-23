import 'package:flutter/material.dart';
class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              AppBar(),
              Text("Transactions récentes"),

            ],
          ),
      ),
    );
  }
}
