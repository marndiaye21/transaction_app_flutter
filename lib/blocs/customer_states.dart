import '../models/customer.dart';

abstract class CustomerState {}

class CustomersLoadingState extends CustomerState {}

class CustomersInitialState extends CustomerState {}

class CustomersLoadedState extends CustomerState {
  CustomersLoadedState(this.customers);

  List<Customer> customers = [];
}

class CustomersErrorState extends CustomerState {
  CustomersErrorState(this.error);

  String? error;
}
