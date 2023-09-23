import 'package:flutter/material.dart';
class ListCustomer extends StatelessWidget {
  const ListCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBar(),
            Text("Bonjour Client!!!")
          ],
        ),
      ),
    );
  }
}
