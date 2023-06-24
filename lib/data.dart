import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:uts/home.dart';
import 'package:uts/account.dart';
import 'package:uts/main.dart';

void main(List<String> args) {
  runApp(const MaterialApp(home: Data()));
}

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  var title = "";
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: ListView(children: [
        ListTile(
          onTap: () {
            //   setState(() {
            //       progress = 10;
            //     });

            //     var data = await fetchAlbum();

            //     var datajson = json.decode(data.body);
            //     setState(() {
            //       progress = 0;
            //     });
            //     setState(() {
            //       title = datajson["title"];
            //     });
            //     print(datajson["title"]);
          },
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 1"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 2"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 3"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 4"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 5"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 6"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 7"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 8"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 9"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 10"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 11"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 12"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 13"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 14"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 15"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 16"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 17"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 18"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 19"),
        ),
        ListTile(
          leading: Icon(Icons.add_business_sharp),
          title: Text("Sensor 20"),
        ),
      ]),
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
