import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tubank/screens/page1.dart';
import 'package:tubank/screens/page2.dart';
import 'page3.dart';
import 'package:tubank/screens/page4.dart';

import '../constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/items_acao.dart';
import '../widgets/text_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _pageIndex = 0;

  final screens = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 28,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.import_export_sharp), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_sharp), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer_sharp), label: ""),
        ],
        currentIndex: _pageIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
      body: screens[_pageIndex],
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
