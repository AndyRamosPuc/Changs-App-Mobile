import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  double? size;
  TextOverflow? overflow;

  BigText({
    super.key,
    required this.text,
    this.size = 16,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}
