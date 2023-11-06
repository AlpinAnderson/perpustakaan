import 'package:flutter/material.dart';

class CreateKategoriBuku extends StatefulWidget {
  const CreateKategoriBuku({Key? key}) : super(key: key);

  @override
  _CreateKategoriBukuState createState() => _CreateKategoriBukuState();
}

class _CreateKategoriBukuState extends State<CreateKategoriBuku> {
  final TextEditingController _namaKategoriController = TextEditingController();

  Future<void> createCategory() async {
    // Implementasi metode createCategory yang sesuai di sini.
    // Anda dapat memanggil metode ini saat tombol "Submit" ditekan.

    // Contoh pemanggilan createCategory:
    // try {
    //   await createCategory();
    // } catch (e) {
    //   // Handle error jika diperlukan.
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Kategori Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _namaKategoriController,
              decoration: InputDecoration(
                labelText: 'Nama Kategori',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await createCategory();
                } catch (e) {
                  // Handle error jika diperlukan.
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
