import 'package:flutter/material.dart';
import 'package:tubank/constants.dart';
import 'package:tubank/screens/page1.dart';
import 'package:tubank/widgets/items_acao.dart';

class AreaPix extends StatefulWidget {
  const AreaPix({super.key});

  @override
  State<AreaPix> createState() => _AreaPixState();
}

class _AreaPixState extends State<AreaPix> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(horizontal: 25),
        //padding: EdgeInsets.symmetric(horizontal: 25),
        width: size.width,
        height: size.height,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Icon(Icons.close),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black54,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.question_mark_sharp,
                    color: Colors.black54,
                  )
                ],
              ),
              Text(
                "Área Pix",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.",
                style: TextStyle(color: Colors.black54, fontSize: 17),
              ),
              SizedBox(height: 10),
              Text(
                "Enviar",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: Row(
                  children: [
                    ItemsAcao(
                      name: "Transferir",
                      icon: Icon(Icons.attach_money_sharp),
                      press: () {},
                    ),
                    Spacer(),
                    ItemsAcao(
                      name: "Pix Copia e Cola",
                      icon: Icon(Icons.copy_outlined),
                      press: () {},
                    ),
                    Spacer(),
                    ItemsAcao(
                      name: "Ler QR code",
                      icon: Icon(Icons.qr_code),
                      press: () {},
                    ),
                  ],
                ),
              ),
              Text(
                "Receber",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: Wrap(
                  spacing: 35,
                  children: [
                    ItemsAcao(
                      name: "Cobrar",
                      icon: Icon(Icons.currency_exchange_sharp),
                      press: () {},
                    ),
                    //Spacer(),
                    ItemsAcao(
                      name: "Depositar",
                      icon: Icon(Icons.money_off_csred_sharp),
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
