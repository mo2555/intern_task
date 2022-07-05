import 'package:flutter/material.dart';

class HeroTag extends StatelessWidget {
  final width;
  const HeroTag({Key? key,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tag',
      child: Image.asset(
        'assets/images/logo_horizontal.png',
        width: width,
      ),
    );
  }
}
