import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:transfert/models/customer.dart';

class CustomerRepository {
  CollectionReference? _customerCollection;

  CustomerRepository() {
    _customerCollection = FirebaseFirestore.instance.collection('clients');
  }

  Future<List<Customer>> getAll() async {
    QuerySnapshot<Object?>? querySnapshot = await _customerCollection?.get();
    List<Customer> customers = [];

    for (QueryDocumentSnapshot documentSnapshot in querySnapshot!.docs) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;
      Customer customer = Customer.fromJson(data);
      customers.add(customer);
    }

    return customers;
  }

  Future<Customer?> add(
      String fullname, String phone, String identityNumber) async {
    DocumentReference<Object?>? newCustomer = await _customerCollection?.add({
      "fullname": fullname,
      "phone": phone,
      "identityNumber": identityNumber
    });
    if (newCustomer != null) {
      String customerId = newCustomer.id;
      Customer? customer;
      DocumentSnapshot<Object?> value = await newCustomer.get();
      Object? customerMap = value.data();
      customer = Customer.fromJson(customerMap);
      customer.setId = customerId;
      return customer;
    } else {
      throw Exception("Impossible de contacter le service firestore !!!");
    }
  }
}
