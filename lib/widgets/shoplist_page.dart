// import 'package:flutter/material.dart';
// import 'package:pretty_shop/widgets/shop_card.dart';
// import 'package:pretty_shop/screens/menu.dart';
// import 'package:pretty_shop/widgets/left_drawer.dart';

// class ShopListPage extends StatelessWidget {
//   final List<ShopItemList> shopList;

//   ShopListPage({required this.shopList});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'List of Items',
//           textAlign: TextAlign.center,
//         ),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 198, 222, 255),
//         foregroundColor: Colors.white,
//       ),
//       drawer: const LeftDrawer(),
//       backgroundColor: Color.fromARGB(255, 244, 197, 221),
//       body: ListView.builder(
//         itemCount: shopList.length,
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 4.0,
//             margin: EdgeInsets.all(8.0),
//             child: ListTile(
//               title: Text('Nama Aksesoris: ' + shopList[index].nama),
//               subtitle: Text('Harga: ${shopList[index].harga}\nDeskripsi: ${shopList[index].deskripsi}'),
              
//               tileColor: Color.fromARGB(255, 255, 158, 215),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: ElevatedButton(
//         onPressed: () {
//           // Navigator.pop(context);
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => MyHomePage(),
//             ),
//           );
//         },
//         child: Text('Back'),
//       ),
//     );
//   }
// }