import 'package:flutter/material.dart';
import 'package:tubank/main.dart';
import 'package:tubank/screens/homescreen.dart';
import 'package:tubank/screens/page2.dart';
import 'package:tubank/screens/page4.dart';

import '../constants.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        short_app_bar(size: size),
        Center(
          child: Text("Página 3"),
        )
      ],
    );
  }
}
