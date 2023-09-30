import 'package:bloc/bloc.dart';
import 'package:transfert/blocs/customer_events.dart';
import 'package:transfert/blocs/customer_states.dart';
import 'package:transfert/models/customer.dart';

import 'package:transfert/repositories/customer_repository.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  List<Customer> customers = [];

  CustomerBloc() : super(CustomersInitialState()) {
    on<CustomerListEvent>((event, emit) async {
      try {
        emit(CustomersLoadingState());
        customers = await CustomerRepository().getAll();
        emit(CustomersLoadedState(customers));
      } catch (exception) {
        emit(CustomersErrorState(exception.toString()));
      }
    });

    on<CustomerAddEvent>((CustomerAddEvent event, emit) async {
      try {
        Customer? customer = await CustomerRepository().add(event.fullname, event.phone, event.identityNumber);
        customers.add(customer as Customer);
        emit(CustomersLoadedState(customers));
      } catch (exception) {
        emit(CustomersErrorState(exception.toString()));
      }
    });
  }
}
