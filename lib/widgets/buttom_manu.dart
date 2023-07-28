import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

class CustomFluidNavBar extends StatefulWidget {
  final int selectedIndex;
  ValueChanged<int> onClicked;

  CustomFluidNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onClicked,
  }) : super(key: key);

  @override
  _CustomFluidNavBarState createState() => _CustomFluidNavBarState();
}

class _CustomFluidNavBarState extends State<CustomFluidNavBar> {
  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController =
        CircularBottomNavigationController(widget.selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
     //   height: 85,
        color: Color(0x00000000),
        child: CircularBottomNavigation(
        circleSize: 60,
        barBackgroundColor: Colors.white,
        circleStrokeWidth: 6,
        iconsSize: 24,
        backgroundBoxShadow: [BoxShadow(color: DefaultColor.bg_color, blurRadius: 0.2)],
        controller: _navigationController,
        _buildBottomNavItems(),
        selectedCallback: (selectedPos) => _handleNavigationChange(selectedPos!), // Call _handleNavigationChange(selectedPos) here
      ),
    );
  }

  List<TabItem> _buildBottomNavItems() {
    return [
      TabItem(Icons.home, "Home", DefaultColor.light_blue, circleStrokeColor:DefaultColor.bg_color, labelStyle: TextStyle(color: DefaultColor.light_blue,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Raleway")),
      TabItem(Icons.wallet_giftcard, "Earning",  DefaultColor.light_blue, circleStrokeColor:DefaultColor.bg_color,labelStyle: TextStyle(color: DefaultColor.light_blue,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Raleway")),
      TabItem(Icons.notifications_none, "Notification", DefaultColor.light_blue, circleStrokeColor:DefaultColor.bg_color,labelStyle: TextStyle(color: DefaultColor.light_blue,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Raleway")),
      TabItem(Icons.account_circle_outlined, "Account",  DefaultColor.light_blue, circleStrokeColor:DefaultColor.bg_color,labelStyle: TextStyle(color: DefaultColor.light_blue,fontSize: 12,fontWeight: FontWeight.w600,fontFamily: "Raleway")),
    ];
  }

  void _handleNavigationChange(int index) {
    setState(() {
      _navigationController.value = index;
      widget.onClicked(index);

      switch (index) {
        case 0:
          Navigator.pushNamed(context, "/home");
          break;
        case 1:
          Navigator.pushNamed(context, "/earning");
          break;
        case 2:
          Navigator.pushNamed(context, "/notification");
          break;
        case 3:
          Navigator.pushNamed(context, "/profile");
          break;
      }
    });
  }
}
