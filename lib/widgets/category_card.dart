import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String NameCategoria;
  final String routeName;
  final String UrlImg;

  const Category(
      {required this.NameCategoria,
      required this.routeName,
      required this.UrlImg});
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: 127.0,
      height: 105.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child:
          Stack(fit: StackFit.expand, alignment: Alignment.center, children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, routeName);
          },
        ),
        Positioned(
          left: 0.0,
          top: 56.0,
          right: null,
          bottom: null,
          width: 127.0,
          height: 49.0,
          child: SizedBox(
            width: 10,
            height: 49,
            child: Card(
              color: const Color.fromRGBO(186, 0, 0, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(0.0),
                  bottomLeft: Radius.circular(0.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 18),
                  Text(NameCategoria,
                      style:
                          const TextStyle(fontSize: 14, color: (Colors.white))),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 23.0,
          top: 0.0,
          right: null,
          bottom: null,
          width: 80.0,
          height: 80.0,
          child: SizedBox(
            width: 80.0,
            height: 80.0,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: NetworkImage(UrlImg),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
