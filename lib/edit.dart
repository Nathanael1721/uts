import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class EditPage extends StatefulWidget {
  const EditPage(
      {super.key,
      required this.nama_mahasisa,
      required this.nim,
      required this.id});
  final String nama_mahasisa;
  final String nim;
  final int id;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  final nimController = TextEditingController();
  final namaController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namaController.text = widget.nama_mahasisa;
    nimController.text = widget.nim;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit New Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text("Edit Data Mahasiswa"),
            SizedBox(height: 20),
            TextField(
              controller: namaController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama Mahasiswa',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nimController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'NIM',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                Map<String, String> headers = {
                  'Content-type': 'application/json',
                  'Accept': 'application/json',
                };
                var response = await http.put(
                    Uri.parse(
                        "http://localhost:1337/api/tabel-mahasiswas/${widget.id}"),
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
