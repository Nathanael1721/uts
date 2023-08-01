import 'package:flutter/material.dart';
import 'package:uts/account.dart';
import 'package:uts/data.dart';
import 'package:uts/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: ListView(
        children: [
          Container(
            //LOGO GROOBAK
            //padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
            //alignment: Alignment.topLeft,
            width: 500.00,
            height: 40.00,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topLeft,
              image: ExactAssetImage(
                'assets/images/logo.png',
              ),
              fit: BoxFit.fitHeight,
              scale: 0.4,
            )),
          ),
          Container(
            // HEADER PAK SANTOSO
            child: Column(
              children: [
                Image.asset(
                  "assets/images/header.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            // SALDO GROOBAK
            //padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            //width: 375,
            //height: 80,
            //decoration: BoxDecoration(color: Colors.deepOrangeAccent),
            child: Column(
              children: [
                // Container(
                //   width: 375,
                //   height: 50,
                //   child: Stack(
                //     children: [
                //       Positioned(
                //         left: 0,
                //         top: 0,
                //         child: Container(
                //           width: 375,
                //           height: 80,
                //           decoration:
                //               BoxDecoration(color: Colors.deepOrangeAccent),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text("PKL Terdekat",
                            style: TextStyle(
                              color: Colors.black,
                              height: 5,
                              fontSize: 17,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            )),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          child: Text(
                            "Lihat semua",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent,
                                height: 0,
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        // Text("Lihat Semua")
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                // Generated code for this Row Widget...
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://picsum.photos/seed/542/600',
                              width: 125,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                            child: Text(
                              'Bakso Krispi, \nPak Somad',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://picsum.photos/seed/542/600',
                              width: 125,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                            child: Text(
                              'Nasi Goreng, \nPak Budi',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://picsum.photos/seed/542/600',
                              width: 125,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 8, 0, 0),
                            child: Text(
                              'Cilok Barokah,\nCak Bagus',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Generated code for this Column Widget...
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 15, 0, 0),
                            child: Text(
                              'Artikel Terbaru',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(150, 15, 0, 0),
                          child: Text(
                            'Lihat Semua',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Generated code for this Column Widget...
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 330,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/302/600',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Text(
                                      '30 Juli 2023',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Semua yang perlu kamu \nkeahui, tentang Groobak',
                                    style: TextStyle(
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 330,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/302/600',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Text('30 Juli 2023',
                                        style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                        )),
                                  ),
                                  Text(
                                    'Semua yang perlu kamu \nkeahui, tentang Groobak',
                                    style: TextStyle(
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 330,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/302/600',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Text(
                                      '30 Juli 2023',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Semua yang perlu kamu \nkeahui, tentang Groobak',
                                    style: TextStyle(
                                      fontFamily: 'Outfit',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
