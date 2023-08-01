import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts/account.dart';
import 'package:uts/data.dart';
import 'package:uts/home.dart';
import 'package:uts/main.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ini Halaman Account")),
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("Nathanael Tjahyadi"),
                accountEmail: Text("1102210021"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.ittelkom-sby.ac.id//pmb/2122/PAS_FOTO/2117812751_PAS_FOTO_3.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                )),

            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.deepOrangeAccent,
            //   ),
            //   child: Text("Drawer Header"),
            // ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            const Divider(
              color: Colors.deepOrangeAccent,
              height: 5,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Data()),
                );
              },
              leading: Icon(Icons.data_array_sharp),
              title: Text("Data"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
