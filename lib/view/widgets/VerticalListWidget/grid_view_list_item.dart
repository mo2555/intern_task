import 'package:flutter/material.dart';
import 'package:intern_task/model/DataModel/DataModel.dart';
import 'package:intern_task/view/widgets/SharedWidgets/custom_stack.dart';
import '../SharedWidgets/custom_icon_with_number.dart';
import 'custom_type_of_house_ver.dart';

class GridViewListItem extends StatelessWidget {
  DataModel recentProperties;

  GridViewListItem({Key? key, required this.recentProperties})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomStack(
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.3,
              imageUrl: recentProperties.featuredImage!.thumbnail!),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.5,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTypeOfHouseVer(
                  type: recentProperties.type!,
                  status: recentProperties.status!,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      '${recentProperties.title}',
                      style: const TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 8,
                        color: Colors.blue,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.width * 0.06,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      '${recentProperties.price}',
                      style: const TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.12,
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
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${recentProperties.address}',
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
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIconWithNumber(
                          imageUrl: 'assets/icons/space.png',
                          text: '${recentProperties.size}'),
                      CustomIconWithNumber(
                          imageUrl: 'assets/icons/bath_icon.png',
                          text: '${recentProperties.bathrooms}'),
                      CustomIconWithNumber(
                          imageUrl: 'assets/icons/bed.png',
                          text: '${recentProperties.bedrooms}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
