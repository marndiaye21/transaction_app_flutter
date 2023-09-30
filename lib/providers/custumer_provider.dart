import 'package:flutter/cupertino.dart';
import 'package:transfert/models/customer.dart';
import 'package:transfert/repositories/customer_repository.dart';

class CustomerProvider extends ChangeNotifier {

  List<Customer> customers = [];

  getCustomers() async {
    customers = await CustomerRepository().getAll();
    notifyListeners();
  }

  addCustomer(String fullname, String phone, String identityNumber) async {
    Customer? customer = await CustomerRepository().add(fullname, phone, identityNumber);
    customers.add(customer!);
    notifyListeners();
  }
}