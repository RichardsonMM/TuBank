import 'package:flutter/material.dart';

class ItemsAcao extends StatelessWidget {
  final String name;
  final Icon icon;
  const ItemsAcao({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 65,
              width: 65,
              color: Color.fromARGB(11, 0, 0, 0),
              child: icon,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
