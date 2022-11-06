import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/items_acao.dart';
import '../widgets/text_card.dart';

class Page1 extends StatefulWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          app_bar(),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Text(
                  "Conta",
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 33, 33),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "R\$ 1000,00",
                style: TextStyle(
                  color: Color.fromARGB(255, 33, 33, 33),
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
              child: Row(
                children: const [
                  ItemsAcao(
                    icon: Icon(Icons.pix),
                    name: "Área Pix",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.line_weight),
                    name: "Pagar",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.attach_money_rounded),
                    name: "Transferir",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.money_off),
                    name: "Depositar",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.phone_android_rounded),
                    name: "Recarga",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.favorite_border),
                    name: "Doação",
                  ),
                  ItemsAcao(
                    icon: Icon(Icons.language_sharp),
                    name: "T.Internac.",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width * .95,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Color.fromARGB(11, 0, 0, 0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: const [
                  Icon(Icons.credit_card_rounded),
                  SizedBox(width: 15),
                  Text(
                    "Meus cartões",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: const [
                TextCard(
                    text:
                        "Programar Caixinhas: uma ajuda\nna hora de guardar dinheiro."),
                TextCard(
                    text:
                        "Programar Caixinhas: uma ajuda\nna hora de guardar dinheiro."),
                TextCard(
                    text:
                        "Programar Caixinhas: uma ajuda\nna hora de guardar dinheiro."),
                TextCard(
                    text:
                        "Programar Caixinhas: uma ajuda\nna hora de guardar dinheiro."),
              ]),
            ),
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Color.fromARGB(11, 0, 0, 0),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: Text(
                  "Cartão de crédito",
                  style: TextStyle(
                      color: Color.fromARGB(255, 33, 33, 33),
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          Container(
            width: size.width * 1,
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Fatural atual",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "R\$ 250,00",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Limite disponível de R\$ 750,00",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 40,
                width: 140,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: kGrayColor),
                child: const Text(
                  "Parcelar compras",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Color.fromARGB(11, 0, 0, 0),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: const Text(
                  "Acompanhe também",
                  style: TextStyle(
                    color: Color.fromARGB(255, 33, 33, 33),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: size.width * .9,
                height: 70,
                decoration: BoxDecoration(
                  color: kGrayColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.attach_money_sharp),
                    SizedBox(width: 20),
                    Text(
                      "Assistente de \npagamentos",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            width: double.infinity,
            color: Color.fromARGB(11, 0, 0, 0),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          ),
        ],
      ),
    );
  }
}
