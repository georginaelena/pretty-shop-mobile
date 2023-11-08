# Pretty Shop
### by Georgina Elena Shinta Dewi Achti - 2206810995
berikut merupakan hasil pengerjaan Tugas Pemrograman Berbasis Platform.

<details>
<summary>Tugas 7: Elemen Dasar Flutter</summary>

<br>

# TUGAS 2📕

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

<detail>
<summary>Membuat Struktur Proyek</summary>

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