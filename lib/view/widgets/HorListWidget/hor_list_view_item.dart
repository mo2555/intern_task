import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../../model/DataModel/DataModel.dart';
import '../SharedWidgets/custom_icon_with_number.dart';
import '../SharedWidgets/custom_stack.dart';
import 'custom_type_of_house_hor.dart';

class HorListViewItem extends StatelessWidget {
  DataModel lowestProperties ;
   HorListViewItem({Key? key,required this.lowestProperties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
         CustomStack(height: 105.0,width: 160.0,imageUrl: lowestProperties.featuredImage!.thumbnail!,),
        SizedBox(
          height: 175,
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
               CustomTypeOfHouseHor(type: lowestProperties.type!,status: lowestProperties.status!,),
               SizedBox(
                width: 160,
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    '${lowestProperties.title}',
                    style: const TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 10,
                      color: Colors.blue,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
               SizedBox(
                 height: 15,
                 width: 160,
                 child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    '${lowestProperties.price}',
                    style: const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
               ),
              SizedBox(
                height: 50,
                width: 160,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Image.asset(
                        'assets/icons/location.png',
                        height: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                     SizedBox(
                       width: 130,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 5),
                         child: Text(
                          '${lowestProperties.address}',
                          style: const TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 8,
                              color: Colors.black,
                              ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                    ),
                       ),
                     ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [

                    CustomIconWithNumber(imageUrl: 'assets/icons/space.png',text: '${lowestProperties.size}'),

                    CustomIconWithNumber(imageUrl: 'assets/icons/bath_icon.png',text: '${lowestProperties.bathrooms}'),

                    CustomIconWithNumber(imageUrl: 'assets/icons/bed.png',text: '${lowestProperties.bedrooms}'),

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }





}
