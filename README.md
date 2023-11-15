# Pretty Shop
### by Georgina Elena Shinta Dewi Achti - 2206810995
berikut merupakan hasil pengerjaan Tugas Pemrograman Berbasis Platform.

<details>
<summary>Tugas 7: Elemen Dasar Flutter</summary>

<br>

# TUGAS 7📕

Proyek ini dibuat dengan tujuan memenuhi Tugas 7 Pemrograman Berbasis Platform. Nama aplikasi saya, yaitu **Pretty Shop** bayangannya akan menjadi aplikasi jual-beli aksesoris. 

Saya akan menjelaskan beberapa poin-poin berikut:
1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
3. Implementasi Proyek 

<details>
<summary>Stateless Widget vs Stateful Widget</summary>

Dalam konteks pengembangan aplikasi menggunakan Flutter, yang merupakan sebuah framework untuk membangun aplikasi mobile, web, dan desktop dari basis kode tunggal, perbedaan utama antara stateless dan stateful widget adalah bagaimana mereka mengelola status (state).

**Stateless Widget:**
- **Tidak ada state:** Stateless widget tidak menyimpan state. Artinya, mereka tidak menyimpan nilai atau konfigurasi yang bisa berubah selama waktu runtime. Contohnya adalah teks atau ikon yang tidak berubah ketika ada interaksi pengguna.
- **Re-rendering:** Ketika informasi yang diberikan kepada widget berubah, widget tersebut akan dibangun ulang (rebuild) untuk memperbarui tampilan.
- **Lifecycle yang sederhana:** Mereka hanya memiliki lifecycle yang sederhana yaitu dibuat dan dihancurkan.
- **Penggunaan:** Stateless widget umumnya digunakan untuk bagian antarmuka pengguna yang statis dan tidak bergantung pada jumlah yang berubah.
- **Contoh:** `Text`, `Icon`, `Container`

**Stateful Widget:**
- **Dengan state:** Stateful widget dirancang untuk menyimpan state. Mereka bisa merespon perubahan data atau perilaku pengguna dan mengubah tampilan mereka sesuai dengan state yang berubah.
- **State object:** Stateful widget memiliki objek state yang terpisah yang menyimpan state dan memiliki lifecycle yang lebih panjang dibandingkan dengan widget itu sendiri.
- **Lifecycle yang kompleks:** Mereka memiliki lifecycle yang lebih kompleks dengan metode seperti `initState`, `setState`, `dispose`, yang memungkinkan untuk inisialisasi state, perubahan state, dan pembersihan sumber daya.
- **Penggunaan:** Digunakan ketika bagian dari UI diharapkan untuk berinteraksi dengan pengguna atau ketika data terkait UI perlu berubah sepanjang waktu (misalnya, input pengguna, data yang diunduh, animasi, dll).
- **Contoh:** `Checkbox`, `Slider`, `Form`


</details>

<details>
<summary>Widget yang digunakan di dalam Aplikasi</summary>

Berikut merupakan beberapa widget yang digunakan untuk memenuhi tugas kelas ini:
1. `Scaffold`: Ini adalah layout utama untuk halaman pada aplikasi Flutter yang menyediakan struktur dasar untuk layout dengan app bar, body, floating action button, drawer, dan bottom navigation.

2. `AppBar`: Sebuah app bar yang biasanya ditampilkan di atas Scaffold yang bisa menampilkan judul, ikon, dan tindakan lainnya.

3. `SingleChildScrollView`: Membuat widget yang dapat discroll.

4. `IconButton`: Tombol dengan ikon yang men-trigger suatu aksi ketika ditekan.

5. `SnackBar`: Sebuah pesan ringan yang muncul di bagian bawah layar untuk memberikan feedback singkat kepada pengguna.

6. `Icon`: Widget yang menampilkan ikon dari library bawaan atau ikon kustom.

7. `Text`: Sebuah widget yang menampilkan serangkaian karakter dengan gaya yang berbeda.

8. `InkWell`: Membuat area yang responsif terhadap sentuhan.

9. `Container` : Membuat sebuah kotak yang dapat menampung widget lainnya.

10. `Column`: Menampilkan children widget secara vertikal.

11. `StatefulWidget`: Dalam kasus ini, Anda mungkin akan menggunakan StatefulWidget untuk mengatur state ketika tombol ditekan untuk menampilkan SnackBar.

12. `MaterialApp`: Menyediakan struktur dasar untuk tampilan aplikasi, seperti tema, home, dan lain-lain.

13. `Padding`: Memberikan padding pada widget yang diinginkan.

</details>

<details>
<summary>Implementasi Proyek</summary>

Baik, mari kita terapkan penjelasan di atas untuk membuat sebuah aplikasi Flutter dengan nama `pretty_shop` dan persiapkan untuk di-push ke repositori GitHub `pretty-shop-mobile`. Berikut adalah langkah-langkahnya:

<details>
<summary>Instalasi Flutter</summary>

Saya melakukan beberapa tahapan berikut:

1. **Sistem yang Saya Miliki**
   - Sistem operasi macOS (64-bit).
   - Apple Silicon (M1)
   - ver 12.2.1

2. **Mengunduh Flutter SDK:**
   - Saya mengunjungi situs Flutter dan mengunduh Flutter SDK untuk macOS Apple Silicon.
   - Ekstrak file ke lokasi yang diinginkan, untuk proyek saya ada di subdirektori `PBPFlutter`.

3. **Menambahkan Flutter ke Path**
   - Buka terminal folder yang berisi ekstrak file `flutter` dan jalankan perintah 
   ```
   export PATH="$PATH:`pwd`/flutter/bin"
   ```
    Perintah ini menetapkan variabel PATH Anda hanya untuk jendela terminal saat ini.

4. **Menjalankan Flutter Doctor**
   - Di terminal yang sama, jalankan perintah `flutter doctor` untuk memeriksa apakah ada dependensi yang perlu Anda instalasi atau konfigurasi.

5. **Melakukan Instalasi sesuai dependensi yang diperlukan**
    - Saya mendownload Android Studio untuk tools yang wajib digunakan
    - Untuk IDE, saya tetap menggunakan VS Code dan mendownload extension yang diperlukan.

</details>

<details>
<summary>Membuat Aplikasi Flutter Baru</summary>

   Buka Terminal atau Command Prompt dan navigasikan ke direktori di mana Anda ingin proyek Flutter berada. Kemudian jalankan perintah:

   ```sh
   flutter create pretty_shop
   cd pretty_shop
   ```

**Menjalankan Aplikasi Flutter:** Jalankan aplikasi dengan `flutter run` atau `flutter run -d chrome` untuk menjalankan di Chrome.

</details>

<details>
<summary> Membuat Struktur Proyek </summary>

tahapan yang saya lakukan:

**Merapikan Struktur Proyek**
   - Buat file `menu.dart` di dalam subdirektori `lib`
   - Saya buat file menu.dart pada direktori `pretty_shop/lib` dan menambahkan potongan kode:
```dart
import 'package:flutter/material.dart';
```
   

   - Pada `main.dart` saya menghapus kelas `MyHomePage` dan `_MyHomePageState` dan menambahkan"

   ```dart
   import 'package:pretty_shop/menu.dart';
   ```

   - Kemudian saya tambahkan kelas `MyHomePage` pada `menu.dart`sebagai widget yang bersifat stateless:
   ```dart
   class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            ...
        );
    }
}
   ```

   - **Membuat tiga tombol sederhana dengan ikon dan teks:**
   Saya akan membuat tombol dengan menggunakan card. Pertama saya definisikan tombol dalam suatu class:
   ```dart
   class ShopItem {
        final String name;
        final IconData icon;
        final Color color;

  ShopItem(this.name, this.icon, this.color);
}
   ```

   Kemudian pada class `MyHomePage` saya tambahkan list berisi objek tombol tersebut. Di bawah kode `MyHomePage({Key? key}) : super(key: key);` saya tambahkan
   ```dart
   class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    
  // Menggunakan Colors.pinkAccent untuk warna pink terang
    final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist, Color.fromARGB(255, 255, 205, 224)),
        ShopItem("Tambah Item", Icons.add_shopping_cart, Color.fromARGB(255, 255, 184, 253)),
        ShopItem("Logout", Icons.logout, Color.fromARGB(255, 174, 235, 255)),
    ];
    ...
   ```

   Lalu saya membuat widget baru untuk membuat cards tersebut:
   ```dart
   @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
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
   ```

   Untuk menampilkan card, saya buat halaman utama dengan menambahkan kode berikut pada class `myHomePage`:
   ```dart
   @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hi! Welcome to',
              ),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(169, 255, 0, 85),
            ),
            body: SingleChildScrollView(
              // Widget wrapper yang dapat discroll
              child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                child: Column(
                  // Widget untuk menampilkan children secara vertikal
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                      child: Text(
                        'Pretty Shop', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Grid layout
                    GridView.count(
                      // Container pada card kita.
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.map((ShopItem item) {
                        // Iterasi untuk setiap item
                        return ShopCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
   ```

   memunculkan Snackbar:
   ```dart
   child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
   ```

   - **Di dalam file `menu.dart` isi keseluruhannya sebagai berikut:**
   
   ```dart
import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
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

 class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    
  // Menggunakan Colors.pinkAccent untuk warna pink terang
  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Color.fromARGB(255, 255, 205, 224)),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Color.fromARGB(255, 255, 184, 253)),
    ShopItem("Logout", Icons.logout, Color.fromARGB(255, 174, 235, 255)),
  ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hi! Welcome to',
              ),
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(169, 255, 0, 85),
            ),
            body: SingleChildScrollView(
              // Widget wrapper yang dapat discroll
              child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                child: Column(
                  // Widget untuk menampilkan children secara vertikal
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                      child: Text(
                        'Pretty Shop', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Grid layout
                    GridView.count(
                      // Container pada card kita.
                      primary: true,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: items.map((ShopItem item) {
                        // Iterasi untuk setiap item
                        return ShopCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          );
    }
}
   ```

   - **Di dalam file `main.dart` isi keseluruhannya sebagai berikut:**

   ```dart
import 'package:flutter/material.dart';
import 'package:pretty_shop/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pretty Shop',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

</details>



</details>
</details>

<details>
<summary>Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements</summary>

<br>

# TUGAS 8😵‍💫
Proyek ini dibuat dengan tujuan memenuhi Tugas 8 Pemrograman Berbasis Platform. Saya akan menjelaskan beberapa poin-poin berikut:
1. Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`
2. Seluruh widget yang digunakan untuk menyelesaikan tugas ini dan penjelasannya
3. Elemen input pada form 
4. penerapan _clean architecture_ pada aplikasi Flutter
5. Implementasi Proyek

## 🔥```Navigator.push()``` vs ```Navigator.pushReplacement()```🔥
|```Navigator.push()```|```Navigator.pushReplacement()```|
|--|--|
|Menambahkan suatu *route* pada tumpukan navigasi|Menghapus *route* yang lama dengan *route* baru|
|Tidak mengubah urutan route yang ada dalam tumpukan|Mengubah urutan route dengan menghapus yang lama dan menempatkan yang baru di posisi yang sama|
|Tidak mengubah jumlah route dalam tumpukan; hanya menambahkan di atasnya|Mengurangi jumlah total route di tumpukan karena menggantikan route saat ini|
|Memungkinkan kembali ke *route* sebelumnya dengan tombol kembali|Tidak dapat kembali ke layar sebelumnya|
contoh ```Navigator.push()```
```
Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => ShopFormPage(),
        ),
    );
```
contoh ```Navigator.pushReplacement()```
```
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => MyHomePage(),
        ),
    );
```
## *Layout* widget pada flutter
1. ```Align``` -> mengatur child di dalamnya untuk mengatur tombol save pada form
2. ```Container``` -> Menyimpan ikon dan teks di dalamnya. Memberikan padding dan memiliki latar belakang sesuai warna dari objek ShopItem.
3. ```Padding``` -> menambahkan padding di sekitar child 
4. ```Column``` -> tata letak child-widget secara vertikal
4. ```GridView``` -> Digunakan untuk membuat grid layout 
6. ```ListView``` -> digunakan untuk membuat daftar item dengan jumlah yang dinamis tanpa memerlukan item yang ada sebelumnya.
7. `Center` -> Blok alignment yang menempatkan child di tengah-tengah dirinya.
8. `Expanded` -> Widget yang memperluas child dari Row, Column, atau Flex.
9. `Row` -> Widget yang mengatur daftar child widget secara horizontal.
10. `Stack` -> Menumpuk beberapa child dengan cara yang sederhana
11. `Table` -> Menampilkan child widget dalam baris dan kolom.

## Elemen input pada form
1. Nama Aksesoris <br> Berisi tentang nama barang/aksesoris yang akan diinput pada collection.
2. Harga Aksesoris <br> Banyaknya aksesoris yang ingin di request/pesan
3. Deskripsi <br> Memberikan gambaran terkait aksesoris

## Penerapan *clean architecture* pada aplikasi Flutter
Penerapan clean architecture pada aplikasi Flutter merupakan strategi untuk meningkatkan kebersihan dan keluwesan kode. Inti dari arsitektur ini adalah pemisahan kode menjadi beberapa lapisan yang berbeda namun tetap saling terhubung. Lapisan-lapisan ini mencakup business logic, presenter/UI, state management, sumber data eksternal, dan repository. Dengan pendekatan ini, setiap bagian kode memiliki tanggung jawab yang jelas dan terpisah, yang memungkinkan perubahan atau pembaruan pada satu bagian tanpa mengganggu bagian lainnya.

Keuntungan utama dari metode ini adalah peningkatan kemudahan dalam pengujian dan pemeliharaan kode. Business logic, yang merupakan inti dari aplikasi, terpisah dari lapisan presentasi dan UI. Hal ini memungkinkan pengembang untuk fokus pada logika bisnis tanpa terganggu oleh aspek-aspek tampilan pengguna. Begitu pula dengan state management yang terpisah, memudahkan penanganan dan pemantauan perubahan state dalam aplikasi.

Secara keseluruhan, clean architecture membuat struktur kode pada aplikasi Flutter menjadi lebih modular, mudah diuji, dan mudah dipelihara. Pendekatan ini sangat berguna dalam pengembangan aplikasi yang kompleks, di mana kebutuhan untuk memodifikasi atau menambahkan fitur baru muncul secara reguler.

## Implementasi proyek
#### Menambahkan Form dan Elemen Input
1. Buat berkas baru pada direktori ```lib``` dengan nama ```shoplist_form.dart``` kemudian tambahkan kode berikut,
```
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
    ...
```
kode tersebut digunakan untuk menambahkan 3 elemen input dan validasi input sesuai ketentuan

2. Untuk menambahkan tombol save, tambahkan kode berikut
```
...
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
        if (_formKey.currentState!.validate()) {}
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
```
#### Navigasi pada tombol ```tambah item```
1. Pada berkas file ```shop_card.dart``` tambahkan kode berikut agar ketika tombol tambah item di tekan akan memunculkan form yang telah dibuat sebelumnnya,
```
onTap: () {
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
}
```
#### Memunculkan data form dalam bentuk ```pop-up```
1. tambahkan fungsi ```showDialog()``` pada bagian ```onPressed()``` dan memunculkan widget ```AlertDialog```
```
...
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
  ...
```
#### Menambahkan drawer
1. Buat direktori baru pada direktori ```lib``` dengan nama ```widgets```. Kemudian buat file baru dengan nama ```left_drawrer.dart``` lalu tambahkan kode berikut
```
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan belanjamu di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
  ...
```
2. Navigasi pada tombol ```tambah item```. Saat di tekan akan membuka form
```
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Halaman Utama'),
        // Bagian redirection ke MyHomePage
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
        },
      ),

      ListTile(
        leading: const Icon(Icons.add_shopping_cart),
        title: const Text('Tambah Produk'),
        // Bagian redirection ke ShopFormPage
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              ));
        },
      ),
  ...
```
#### Refactoring file
1. Buat file baru pada direktori ```widgets``` dengan nama ```shop_card.dart``` 
2. Pindahkan isi ```ShopItem``` dari berkas ```menu.dart``` ke ```shop_card.dart```
3. Buat direktori baru ```screens``` pada direktori ```lib```
4. Pindahkan berkas ```menu.dart``` dan ```shop_form.dart``` ke direktori ```screens```

# BONUS💞
#### Menampilkan daftar item yang telah dibuat dari form 
1. Buat berkas baru dalam direktori ```widgets``` dengan nama ```shoplist_page``` lalu tambahkan kode berikut
```
class ShopListPage extends StatelessWidget {
  final List<ShopItemList> shopList;

  ShopListPage({required this.shopList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List of Items',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 198, 222, 255),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      backgroundColor: Color.fromARGB(255, 244, 197, 221),
      body: ListView.builder(
        itemCount: shopList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Nama Aksesoris: ' + shopList[index].nama),
              subtitle: Text('Harga: ${shopList[index].harga}\nDeskripsi: ${shopList[index].deskripsi}'),
              
              tileColor: Color.fromARGB(255, 255, 158, 215),
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          // Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ),
          );
        },
        child: Text('Back'),
      ),
    );
  }
}
```
#### Menambahkan opsi tambah item pada drawer
1. Pada berkas ```left_drawer.dart``` tambahkan kode berikut
```
 ...
    ListTile(
      leading: const Icon(Icons.checklist),
      title: const Text('Lihat Item'),
      // Bagian redirection ke ShopFormPage
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShopListPage(shopList: shopList),
        ));
      },
    ),
  ...
```
#### Navigasi pada tombol ```lihat item```
1. Pada berkas file ```shop_card.dart``` tambahkan kode berikut agar saat tombol tambah item di tekan akan memunculkan form yang telah dibuat sebelumnnya,
```
...
else if (item.name == "Lihat Item"){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ShopListPage(shopList: shopList),
              ),
            );
          }
        },
```


</details>
