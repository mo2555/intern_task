import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task/model/DataModel/DataModel.dart';


class CustomTypeOfHouseVer extends StatelessWidget {
  Type type;
  String status;
  CustomTypeOfHouseVer({Key? key,required this.type,required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  SizedBox(
      width:double.infinity,
      height: MediaQuery.of(context).size.width*0.08,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 18,
            width: 5,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
           Text(
            '${type.name}',
            style: const TextStyle(
              fontSize: 10,
              fontFamily: 'Cairo',
            ),
          ),
          const Spacer(),

          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 18,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),),
            child:  Text(
              status,
              style: const TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontSize: 8,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
