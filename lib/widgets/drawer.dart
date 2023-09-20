import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
   DrawerWidget({super.key});

  List<Map<String ,dynamic>> menus=[
    {'icon':const IconData(0xe043, fontFamily: 'MaterialIcons'),'nom':'Client'},
    {'icon':const IconData(0xe040, fontFamily: 'MaterialIcons'),'nom':'Compte'},
    {'icon':const IconData(0xf05d6, fontFamily: 'MaterialIcons'),'nom':'Transaction'},
    {'icon':Icons.settings,'nom':'Paramètres'},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan[800]),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn3.vectorstock.com/i/1000x1000/69/22/hands-with-wallet-and-bank-card-transaction-vector-26906922.jpg'),
                    radius: 40,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Transaction",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )
                ],
              )),
          ...menus.map((menu) {
            return Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 1,color: Colors.black12))
              ),
              child: ListTile(
                leading: Icon(menu["icon"],color: Colors.black87),
                trailing: const Icon(Icons.arrow_forward_ios,size: 16,),
                title: Text(
                  menu['nom'],
                  style:const TextStyle(fontSize: 22),
                ),
              ),
            );

          })

        ],
      ),
    );
  }
}
