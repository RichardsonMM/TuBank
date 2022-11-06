import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubank/constants.dart';
import 'package:tubank/screens/homescreen.dart';
import 'package:tubank/screens/page2.dart';
import 'package:tubank/widgets/items_acao.dart';

import 'widgets/app_bar.dart';
import 'widgets/text_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TuBank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
