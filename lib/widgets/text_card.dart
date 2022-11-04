import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  final String text;
  const TextCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 0, right: 10),
        //padding: EdgeInsets.symmetric(horizontal: 10),
        width: size.width * .7,
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(11, 0, 0, 0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Text(text),
        ),
      ),
    );
  }
}
