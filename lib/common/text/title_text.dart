import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
      child: Column(children: [
        Row(
          children: const [
            Text(
              'Bienvenido a ',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              'BETTER FOOD',
              style:
                  TextStyle(fontSize: 25, color: Color.fromRGBO(186, 0, 0, 1)),
            ),
          ],
        ),
      ]),
    );
  }
}
