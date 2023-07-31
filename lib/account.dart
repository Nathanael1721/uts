import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts/home.dart';
import 'package:uts/data.dart';
import 'package:uts/main.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: Text("Ini Halaman Account")),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Halaman Account"),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: false,
          elevation: 5,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 400,
                    height: 201,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://cdn.ittelkom-sby.ac.id//pmb/2122/PAS_FOTO/2117812751_PAS_FOTO_3.jpg',
                            width: 169,
                            height: 147,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Nathanael Tjahyadi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Surabaya, Jawa Timur',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          thickness: 5,
                          color: Colors.deepOrangeAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 373,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        'Email : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        'nathanael.tjahyadi.21@student.ce.ittelkom-sby.ac.id',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        'Nomor Ponsel :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        '+62 812 3581 2751',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        'Alamat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Text(
                        'Jetis Kulon X No. 42, Surabaya',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      thickness: 5,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),
              Container(
                width: 399,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: Icon(
                          Icons.security,
                          color: Colors.grey,
                          size: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Keamanan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 423,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: 36,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'PKL Favorit',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 417,
                height: 194,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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
      ),
    );
  }
}
