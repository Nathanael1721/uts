import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          // padding: const EdgeInsets.all(8),
          // children: <Widget>[
          //   Container(
          //     height: 200,
          //     color: Colors.amber[600],
          //     child: const Center(child: Text('Entry A')),
          //   ),
          //   Container(
          //     height: 200,
          //     color: Colors.amber[500],
          //     child: const Center(child: Text('Entry B')),
          //   ),
          //   Container(
          //     height: 200,
          //     color: Colors.amber[100],
          //     child: const Center(child: Text('Entry C')),
          //   ),
          // ],

          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: 500.00,
              height: 40.00,
              decoration: BoxDecoration(
                  //color: Colors.black,
                  image: DecorationImage(
                image: ExactAssetImage(
                  'assets/images/logo.png',
                ),
                fit: BoxFit.fitHeight,
                scale: 0.4,
              )),
            ),
            Container(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/header.png",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              width: 375,
              height: 80,
              decoration: BoxDecoration(color: Colors.deepOrangeAccent),
              child: Column(
                children: [
                  Container(
                    width: 375,
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 375,
                            height: 80,
                            decoration:
                                BoxDecoration(color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )

            // Card(
            //   elevation: 1,
            //   margin: EdgeInsets.all(10),
            //   color: Colors.deepOrangeAccent,
            //   shape: RoundedRectangleBorder(
            //     //color: Colors.white,
            //     borderRadius: BorderRadius.circular(5.0),
            //   ),
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Text("Cerita Bersama Groobak",
            //           style: TextStyle(
            //             color: Colors.white,
            //             height: 5,
            //             fontSize: 17,
            //             fontFamily: "Poppins",
            //             fontWeight: FontWeight.w600,
            //           ))
            //       //Image.asset(imgas),
            //     ],
            //   ),
            // )
          ],
        )
        // body: Container(
        //     width: 200.00,
        //     height: 40.00,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //         image: ExactAssetImage('assets/images/logo.png'),
        //         //fit: BoxFit.fitHeight,
        //         scale: 0.4,
        //       ),
        //     )),
        );
  }
}
