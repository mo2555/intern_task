import 'package:flutter/material.dart';
import 'package:intern_task/controller/home_controller.dart';
import 'package:intern_task/model/DataModel/DataModel.dart';
import 'package:intern_task/view/widgets/HorListWidget/hor_list_view_item.dart';
import 'package:provider/provider.dart';

class HorListView extends StatelessWidget {
  const HorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataModel> lowestProperties = Provider.of<HomeController>(context).lowestProperties;
    print(lowestProperties.length);

    return Container(
      padding: const EdgeInsets.only(right: 20,left: 20),
      width: 160,
      height: 280,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) => Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child:  HorListViewItem(lowestProperties:lowestProperties[index]),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: lowestProperties.length,
      ),
    );
  }
}
