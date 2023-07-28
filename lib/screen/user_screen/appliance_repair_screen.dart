import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';

import '../../utils/default_colors.dart';
import '../../widgets/buttom_manu.dart';
import '../../widgets/services_btn.dart';

class ApplianceRepairScreen extends StatefulWidget {
  const ApplianceRepairScreen({Key? key}) : super(key: key);

  @override
  State<ApplianceRepairScreen> createState() => _ApplianceRepairScreenState();
}

class _ApplianceRepairScreenState extends State<ApplianceRepairScreen> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var items = [
      {'name': 'Ac Repair & Service', 'image': 'assets/images/ac.png'},
      {'name': 'Chimney Repair', 'image': 'assets/images/chimney.png'},
      {
        'name': 'Refrigerator Repair',
        'image': 'assets/images/refrigerator.png'
      },
      {
        'name': 'Washing Machine Reapir',
        'image': 'assets/images/washingmcn.png'
      },
      {'name': 'Water Purifier Repair', 'image': 'assets/images/water.png'}
    ];

    var size = MediaQuery.of(context).size;
    final double itemHeight = 257;
    final double itemWidth = size.width / 2;

    return Scaffold(
      bottomNavigationBar: CustomFluidNavBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: DefaultColor.bg_color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              CustomTopBar(
                text: 'Appliance Repairs',
                icon: Icon(
                  Icons.search_outlined,
                  color: DefaultColor.dark_blue,
                  size: 22,
                ),
                callback: () {},
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(
                    padding: EdgeInsets.only(top: 5),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    controller: new ScrollController(keepScrollOffset: false),
                    itemBuilder: (context, index) {
                      return ServicesBtn(
                        text: items[index]["name"]!,
                        textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),
                        iconImage: Image.asset(items[index]["image"]!),
                        filedColor: Color(0xffEDEDFF),
                        borderColor: Color(0xffEDEDFF),
                        margin: EdgeInsets.symmetric(horizontal: 17),
                        callback: () {
                          Navigator.pushNamed(context, "/refrigeratorrepairscreen");
                        },
                      );
                    },
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: (itemWidth / itemHeight),
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
