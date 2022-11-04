import 'package:flutter/material.dart';

import '../constants.dart';

class app_bar extends StatelessWidget {
  const app_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.25,
          width: size.width,
          child: Container(
            color: kPrimaryColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: size.height * 0.095),
          child: ClipOval(
            child: Image.asset(
              "assets/images/fotominha.jpg",
              width: 50,
              height: 50,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: size.height * .11,
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
        const Positioned(
          bottom: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Text(
              "Olá, Richardson",
              style: TextStyle(color: kWhiteColor, fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
