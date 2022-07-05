import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task/controller/home_controller.dart';
import 'package:intern_task/model/DataModel/DataModel.dart';
import 'package:intern_task/view/widgets/VerticalListWidget/grid_view_list_item.dart';
import 'package:provider/provider.dart';

class GridViewList extends StatelessWidget {
  const GridViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataModel> recentProperties = Provider.of<HomeController>(context).recentProperties;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1/1.8,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
      ),
      padding: const EdgeInsets.all(15),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (_, index) => Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child:  GridViewListItem(recentProperties:recentProperties[index]),
      ),

      itemCount: recentProperties.length,
    );
  }
}
