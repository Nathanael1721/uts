import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts/account.dart';
import 'package:uts/data.dart';
import 'package:uts/home.dart';
import 'package:uts/main.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
