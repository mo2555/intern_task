import 'package:flutter/material.dart';

class TextBeforeListView extends StatelessWidget {
  final String text1;
  final String text2;
  const TextBeforeListView({Key? key, required this.text1, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children:  [
          Text(text1,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Cairo',
              fontSize: 20,
            ),
          ),
          const Spacer(),
          Text(text2,
            style: const TextStyle(
              color: Colors.blue,
              fontFamily: 'Cairo',
              fontSize: 15,
            ),),
        ],
      ),
    );
  }
}
