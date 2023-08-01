import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uts/create.dart';
import 'package:uts/edit.dart';
import 'package:uts/home.dart';
import 'package:uts/account.dart';
import 'package:uts/main.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const MaterialApp(home: Data()));
}

class Data extends StatefulWidget {
  const Data({super.key});
  // final String title;

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  //int _counter = 0;
  int total = 0;
  var dataJson;
  var title = "";
  double progress = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataFromStrapi();
  }

  void _getDataFromStrapi() async {
    var response =
        await http.get(Uri.parse("http://localhost:1337/api/tabel-mahasiswas"));
    dataJson = await jsonDecode(response.body);
    print(dataJson["meta"]["pagination"]["total"]);
    setState(() {
      total = dataJson["meta"]["pagination"]["total"];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: total,
          itemBuilder: (context, index) {
            String nama_mahasiswa =
                dataJson["data"][index]["attributes"]["Nama_Mahasiswa"];
            String nim = dataJson["data"][index]["attributes"]["NIM"];
            int id = dataJson["data"][index]["id"];
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditPage(
                              nama_mahasisa: nama_mahasiswa,
                              nim: nim,
                              id: id,
                            )));
              },
              title: Text(nama_mahasiswa),
              leading: Icon(Icons.person),
              trailing: IconButton(
                  onPressed: () async {
                    var id = dataJson["data"][index]["id"];
                    var response = await http.delete(Uri.parse(
                        "http://localhost:1337/api/tabel-mahasiswas/$id"));
                    _getDataFromStrapi();
                  },
                  icon: Icon(Icons.delete)),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreatePage()));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Data Pedagang Kaki Lima"),
      ),
      // body: ListView(children: [
      //   ListTile(
      //     onTap: () {
      //       //   setState(() {
      //       //       progress = 10;
      //       //     });

      //       //     var data = await fetchAlbum();

      //       //     var datajson = json.decode(data.body);
      //       //     setState(() {
      //       //       progress = 0;
      //       //     });
      //       //     setState(() {
      //       //       title = datajson["title"];
      //       //     });
      //       //     print(datajson["title"]);
      //     },
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 1"),
      //   ),
      //   ListTile(
      //     onTap: () {},
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 2"),
      //   ),
      //   ListTile(
      //     onTap: () {},
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 3"),
      //   ),
      //   ListTile(
      //     onTap: () {},
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 4"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 5"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 6"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 7"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 8"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 9"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 10"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 11"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 12"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 13"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 14"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 15"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 16"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 17"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 18"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 19"),
      //   ),
      //   ListTile(
      //     leading: Icon(Icons.add_business_sharp),
      //     title: Text("Sensor 20"),
      //   ),
      // ]),

      // body : Bottomnavbar(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            if (value == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
              // ke home
            } else if (value == 1) {
              // ke akun
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            } else if (value == 2) {
              // ke akun
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Data()),
              );
            } else if (value == 3) {
              // ke akun
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_array_sharp), label: "Data"),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), label: "Exit"),
          ]),
    );
  }
}
