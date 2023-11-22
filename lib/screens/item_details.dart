import 'package:flutter/material.dart';
import 'package:pretty_shop/models/item.dart';

class DetailItem extends StatelessWidget {
  final Product item;

  const DetailItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.fields.name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 237, 53, 197),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama : ${item.fields.name}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Harga : ${item.fields.price}'),
            SizedBox(height: 10),
            Text('Deskripsi: ${item.fields.description}'),
            // Tambahkan informasi lain sesuai kebutuhan
          ],
        ),
      ),
    );
  }
}