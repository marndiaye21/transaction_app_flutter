import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:transfert/blocs/customer_bloc.dart';
import 'package:transfert/blocs/customer_events.dart';
import 'package:transfert/blocs/customer_states.dart';
import 'package:transfert/models/customer.dart';
import 'package:transfert/providers/custumer_provider.dart';
import 'package:transfert/ui/widgets/customer_item.dart';

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
    context.read<CustomerBloc>().add(CustomerListEvent());
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: AppBar(
        title: const Text("Clients"),
        centerTitle: true,
      ),
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, state) {
          if (state is CustomersLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is CustomersLoadedState) {
            return ListView.builder(
                itemCount: state.customers.length,
                itemBuilder: (context, index) {
                  Random random = Random();
                  int randomNumber = random.nextInt(colors.length);
                  return CustomerItem(
                      customerItem: state.customers[index],
                      color: colors[randomNumber]);
                });
          } else if (state is CustomersErrorState) {
            return Text(state.error!);
          }
          return Container();
        },
      ),
    );
  }
}
