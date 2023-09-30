import 'package:flutter/material.dart';
import 'package:transfert/models/customer.dart';

class CustomerItem extends StatelessWidget {
  CustomerItem({super.key, required this.customerItem, required this.color});

  Customer customerItem;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 2)]),
      child: ListTile(
        title: Text(
          customerItem.fullname as String,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: Text(customerItem.phone as String),
        leading: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
              child: Text(customerItem.fullname![0],
                  style: const TextStyle(fontSize: 22, color: Colors.white))),
        ),
      ),
    );
  }
}
