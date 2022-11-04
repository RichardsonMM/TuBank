import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tubank/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.22,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/avatar.png",
                    scale: 1.4,
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.visibility_rounded, color: Colors.white),
                  SizedBox(width: 15),
                  Icon(Icons.question_mark_rounded, color: Colors.white),
                  SizedBox(width: 15),
                  Icon(Icons.person_add_alt_1_rounded, color: Colors.white),
                ],
              ),
            ),
          ),
          Container(
            child: Text("Olá, Richardson",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            margin: EdgeInsets.symmetric(vertical: size.height * 0.17),
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ],
      ),
    );
  }
}
