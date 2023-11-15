import 'package:pretty_shop/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pretty_shop/widgets/left_drawer.dart';
import 'package:pretty_shop/widgets/shop_card.dart';


class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {

  final _formKey = GlobalKey<FormState>();
  String _nama = "";
  int _harga = 0;
  String _deskripsi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Add Your Favorite Accessories!!',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 138, 233, 219),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Container(
        color: Color.fromARGB(255, 231, 195, 238),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nama Aksesoris✨',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 29, 24, 63),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Masukan nama aksesoris",
                        labelText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        fillColor: Color.fromARGB(255, 229, 170, 239),
                        filled: true,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _nama = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Nama tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Harga Aksesoris💸',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 29, 24, 63),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Masukan harga yang diinginkan",
                        labelText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        fillColor: Color.fromARGB(255, 229, 170, 239),
                        filled: true,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _harga = int.parse(value!);
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Harga tidak boleh kosong!";
                        }
                        if (int.tryParse(value) == null) {
                          return "Harga harus berupa angka!";
                        }
                        return null;
                      },
                    ),
                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Deskripsi✨',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 29, 24, 63),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Masukan deskripsi",
                        labelText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        fillColor: Color.fromARGB(255, 229, 170, 239),
                        filled: true,
                      ),
                      maxLines: 5,
                      onChanged: (String? value) {
                        setState(() {
                          _deskripsi = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Deskripsi tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ],
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ShopItemList newItem = ShopItemList(nama: _nama, harga: _harga, deskripsi: _deskripsi);
                        shopList.add(newItem);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pesanan aksesoris berhasil ditambahkan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_nama'),
                                    Text('Harga: $_harga'),
                                    Text('Deskripsi: $_deskripsi'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyHomePage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      _formKey.currentState!.reset();
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
      )
    );
  }
}