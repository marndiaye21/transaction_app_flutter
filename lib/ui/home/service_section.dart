import 'package:flutter/material.dart';
import 'package:transfert/ui/account/add_account.dart';
import 'package:transfert/ui/customer/add_customer.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(10),
          child: const Text("Services",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87)),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ]),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return AddAccount();
                            });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            const IconData(0xe040, fontFamily: 'MaterialIcons'),
                            size: 50,
                            color: Colors.cyan[800],
                          ),
                          const SizedBox(height: 15),
                          const Text("Ouvrir un compte",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ]),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return const  AddCustomer();
                              });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              const IconData(0xe043,
                                  fontFamily: 'MaterialIcons'),
                              size: 50,
                              color: Colors.cyan[800],
                            ),
                            const SizedBox(height: 15),
                            const Text("Ajouter un client",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600))
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
