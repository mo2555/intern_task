import 'package:flutter/material.dart';

class CustomIconWithNumber extends StatelessWidget {
  final String imageUrl;

  final String text;

  const CustomIconWithNumber({Key? key, required this.imageUrl, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          height: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 10,
            color: Colors.black,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
