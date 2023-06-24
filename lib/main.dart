import 'package:flutter/material.dart';
import 'package:uts/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text("Aplikasi Nathan")),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 200.0),
              width: 50.0,
              height: 100.00,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
                //shape: BoxShape.circle,
              ),
              // alignment: Alignment.center,
              // padding: const EdgeInsets.all(10),
              // child: const Text(
              //   'LOGIN GAN',
              //   style: TextStyle(
              //       color: Colors.blue,
              //       fontWeight: FontWeight.w500,
              //       fontSize: 30),
              // )
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Masukkan Data Anda',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //halaman lupa password
              },
              child: const Text(
                'Lupa Password?',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent,
                  ),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                )),
            Row(
              children: <Widget>[
                const Text('Tidak punya akun?'),
                TextButton(
                  child: const Text(
                    'Buat Akun',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //halaman daftar
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
