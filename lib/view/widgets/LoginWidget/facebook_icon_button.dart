import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../pages/my_home_page.dart';

class FacebookIconButton extends StatelessWidget {
  const FacebookIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
              const MyHomePage(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border.all(color: Colors.yellow,width: 2)
          ),
          child: Row(
            children: [
              const Text('اضغط للتسجيل عن طريق فيسبوك',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
              ),
              const Spacer(),
              Icon(
                Icons.facebook,
                size: 60,
                color: HexColor('#627fcd'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
