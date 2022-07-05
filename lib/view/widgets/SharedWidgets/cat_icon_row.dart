import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CatIconRow extends StatelessWidget {
  const CatIconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
     CatIconRowItem(text: 'جميع العقارات'),
        CatIconRowItem(text: 'للبيع'),
        CatIconRowItem(text: 'للايجار')

      ],
    );
  }

  Widget CatIconRowItem({required String text})  => Container(
      decoration: BoxDecoration(
        color: HexColor('#627fcd'),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      alignment: Alignment.center,
      child: Row(
        children: [
          Image.asset('assets/icons/cat_icon.png',
            height:20,
            width: 20,
            color: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
           Text(text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );


}
