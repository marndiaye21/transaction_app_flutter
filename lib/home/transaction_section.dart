import 'package:flutter/material.dart';
import 'package:transfert/transaction/deposit.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.all(10),
          child: const Text("Transactions",
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
                        color: Color(0xDF283959),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ]
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DepositPage()
                          ),
                        );
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_downward, size: 50, color: Colors.white),
                          SizedBox(height: 15),
                          Text("Dépôt", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white))
                        ],
                      ),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF24A68E),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ]
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_upward, size: 50, color: Colors.white,),
                        SizedBox(height: 15),
                        Text("Retrait", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 20),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color(0xFF325573),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ]
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.compare_arrows, size: 50, color: Colors.white,),
                        SizedBox(height: 15),
                        Text("Transfert", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
