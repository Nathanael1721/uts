import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts/botnavbar.dart';

class Rumah extends StatelessWidget {
  const Rumah({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navbar(),
    );
  }
}
