import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:transfert/blocs/customer_bloc.dart';
import 'package:transfert/blocs/customer_events.dart';
import 'package:transfert/models/customer.dart';
import 'package:transfert/providers/custumer_provider.dart';
import 'package:transfert/ui/customer/list_customer.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({super.key});

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController identityNumberController = TextEditingController();

  void addClient(BuildContext context) async {}

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.only(
              left: 10,
              top: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(28), topLeft: Radius.circular(28)),
            color: Color(0XFF3F7373),
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                IconData(0xe043, fontFamily: 'MaterialIcons'),
                size: 80,
                color: Colors.white70,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.white70))),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    width: 1, color: Colors.white70))),
                        child: const Icon(
                            IconData(0xe491, fontFamily: 'MaterialIcons'),
                            color: Colors.white70)),
                    Expanded(
                        child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez saisir le nom du client";
                        }
                        return null;
                      },
                      controller: fullnameController,
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Nom complet",
                          hintStyle: TextStyle(color: Colors.white70),
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.white70))),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    width: 1, color: Colors.white70))),
                        child: const Icon(
                            IconData(0xe4a2, fontFamily: 'MaterialIcons'),
                            color: Colors.white70)),
                    Expanded(
                        child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez saisir le numéro téléphone";
                        }
                        return null;
                      },
                      controller: phoneController,
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Téléphone",
                          hintStyle: TextStyle(color: Colors.white70),
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.white70))),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            border: Border(
                                right: BorderSide(
                                    width: 1, color: Colors.white70))),
                        child: const Icon(
                            IconData(0xe19f, fontFamily: 'MaterialIcons'),
                            color: Colors.white70)),
                    Expanded(
                        child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez saisir le numéro d'identification";
                        }
                        return null;
                      },
                      controller: identityNumberController,
                      style: const TextStyle(color: Colors.white70),
                      decoration: const InputDecoration(
                          hintText: "Numéro d'identité",
                          hintStyle: TextStyle(color: Colors.white70),
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<CustomerBloc>(context).add(CustomerAddEvent(
                          fullnameController.text,
                          phoneController.text,
                          identityNumberController.text
                      ));
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Ajout de client en cours...',
                              style: TextStyle(color: Colors.white70)),
                          backgroundColor: Colors.cyan[800],
                          padding: const EdgeInsets.all(10),
                          elevation: 10,
                        ),
                      );
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ListCustomer()));
                    }
                  },
                  child: const Text(
                    "Ajouter",
                    style: TextStyle(color: Color(0XFF3F7373)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
