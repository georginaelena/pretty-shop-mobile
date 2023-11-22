import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:pretty_shop/screens/list_item.dart';
import 'package:pretty_shop/screens/login.dart';
import 'package:pretty_shop/screens/shoplist_form.dart';
// import 'package:pretty_shop/widgets/shoplist_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

// class ShopItemList {
//   final String nama;
//   final int harga;
//   final String deskripsi;

//   ShopItemList({
//     required this.nama,
//     required this.harga,
//     required this.deskripsi,
//   });
// }
// List<ShopItemList> shopList = [];

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "Tambah Item") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ShopFormPage(),
              ),
            );
          }
          
          else if (item.name == "Lihat Item") {
            Navigator.push(
              context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage()));
          }
          
          else if (item.name == "Logout") {
            final response = await request.logout(
                "https://georgina-elena-tugas.pbp.cs.ui.ac.id/auth/logout/");
            String message = response["message"];
            
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
          } 
        },

        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}