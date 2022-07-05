import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intern_task/controller/home_controller.dart';
import 'package:intern_task/view/widgets/HomeWidget/app_bar_leading.dart';
import 'package:intern_task/view/widgets/SharedWidgets/cat_icon_row.dart';
import 'package:intern_task/view/widgets/HomeWidget/flexible_space_bar_widget.dart';
import 'package:intern_task/view/widgets/SharedWidgets/text_before_list_view.dart';
import 'package:intern_task/view/widgets/VerticalListWidget/grid_view_list.dart';
import 'package:intern_task/view/widgets/SharedWidgets/hero_tag.dart';
import 'package:intern_task/view/widgets/HorListWidget/hor_list_view.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeController>(context,listen: false).getAllData();

  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:
           FutureBuilder(
             future: Provider.of<HomeController>(context,listen: false).getAllData(),
             builder: (context,snapshots) => snapshots.connectionState==ConnectionState.waiting?const Center(
               child: CircularProgressIndicator(),
             ):snapshots.hasData?SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                        leading: const AppBarLeading(),
                        elevation: 0,
                        centerTitle: true,
                        backgroundColor: Colors.white,
                        pinned: true,
                        expandedHeight: 300,
                        title: HeroTag(
                          width: MediaQuery.of(context).size.width * 0.4,
                        ),
                        flexibleSpace: const FlexibleSpaceBarWidget()),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(
                            height: 20,
                          ),
                          const CatIconRow(),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextBeforeListView(text1: 'الأقل سعرا',text2: 'اظهار الكل',),
                          const SizedBox(
                            height: 15,
                          ),
                          const HorListView(),
                          const SizedBox(
                            height: 30,
                          ),
                          const TextBeforeListView(text1: 'أحدث العقارات',text2: 'اظهار الكل',),
                          const SizedBox(
                            height: 15,
                          ),
                          const GridViewList(),
                        ],
                      ),
                    ),
                  ],
                ),
          ):const Center(child: Text('Error happen , please try again later',
             style: TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.bold,
               fontSize: 20,
               fontFamily: 'Cairo',
             ),
             ),)
           )
        ,
        drawer: const Drawer(),
      ),
    );
  }
}
