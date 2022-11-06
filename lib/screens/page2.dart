import 'package:flutter/material.dart';
import 'package:tubank/main.dart';
import 'package:tubank/screens/homescreen.dart';

import '../constants.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        short_app_bar(size: size),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          height: size.height * .33,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Acompanhe seu dinheiro",
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 33, 33),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: kGrayColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Icon(Icons.animation_outlined),
                    SizedBox(width: 15),
                    Text(
                      "Caixinhas",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "R\$ 0,00",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: kGrayColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Icon(Icons.bar_chart_sharp),
                    SizedBox(width: 15),
                    Text(
                      "Investimentos",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //SizedBox(width: 131),
                    Spacer(),
                    Text(
                      "R\$ 0,00",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: kGrayColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Icon(Icons.currency_bitcoin_rounded),
                    SizedBox(width: 15),
                    Text(
                      "Cripto",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Começar",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Color.fromARGB(11, 0, 0, 0),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          //padding: EdgeInsets.all(0),
          height: size.height * .5,
          width: size.width,
          //color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Acompanhe seu dinheiro",
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 33, 33),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: kGrayColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Icon(Icons.favorite_border_sharp),
                    SizedBox(width: 15),
                    Text(
                      "Seguro vida",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Conhecer",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: kGrayColor, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: const [
                    Icon(Icons.phone_android_outlined),
                    SizedBox(width: 15),
                    Text(
                      "Seguro celular",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    //SizedBox(width: 131),
                    Spacer(),
                    Text(
                      "Conhecer",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

// APP BAR

class short_app_bar extends StatelessWidget {
  const short_app_bar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.17,
          width: size.width,
          child: Container(
            color: kPrimaryColor,
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 72),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/fotominha.jpg",
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 85,
            ),
            child: Wrap(
              spacing: 15,
              children: const [
                Icon(
                  Icons.visibility,
                  color: kWhiteColor,
                ),
                Icon(
                  Icons.question_mark,
                  color: kWhiteColor,
                ),
                Icon(
                  Icons.person_add_alt_1_rounded,
                  color: kWhiteColor,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
