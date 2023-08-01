import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final nimController = TextEditingController();
  final namaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambahkan Pedagang Kaki Lima"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text("Tambahkan Data Pedagang Kaki Lima"),
            SizedBox(height: 20),
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama Pedagang Kaki Lima',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nimController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'No Telp. Pedagang Kaki Lima',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                Map<String, String> headers = {
                  'Content-type': 'application/json',
                  'Accept': 'application/json',
                };
                var response = await http.post(
                    Uri.parse("http://localhost:1337/api/tabel-mahasiswas"),
                    headers: headers,
                    body: jsonEncode({
                      "data": {
                        "Nama_Mahasiswa": namaController.text,
                        "NIM": nimController.text
                      }
                    }));
                print(response.body);
              },
              child: Text("Simpan"),
            )
          ],
        ),
      ),
    );
  }
}
