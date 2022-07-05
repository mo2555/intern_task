import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  final width;
  final height;
  final String imageUrl;
   CustomStack({required this.width,required this.height,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          clipBehavior: Clip.antiAlias,
          height: height,
          width: width,
          child:  FadeInImage(
            placeholder: const AssetImage('assets/images/egypt.png'),
            image: NetworkImage(imageUrl,),
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 10),
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white60,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                size: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
