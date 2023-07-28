import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';

import '../utils/default_colors.dart';

class VenderBottomMenu extends StatefulWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  VenderBottomMenu({super.key, this.selectedIndex, required this.onClicked});

  @override
  _VenderBottomMenuState createState() => _VenderBottomMenuState();
}

class _VenderBottomMenuState extends State<VenderBottomMenu> {

  // backgroundColor: widget.selectedIndex == 0 ? Colors.transparent : Color(0xffffffff),

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x00000000),
      child: FluidNavBar(
        icons: [
          FluidNavBarIcon(
            icon: Icons.home,
            selectedForegroundColor:widget.selectedIndex == 0 ? Color(0xffffffff) : Color(0xffE8E8E8) ,
            unselectedForegroundColor: Color(0xffE8E8E8),
            backgroundColor: widget.selectedIndex == 0 ? DefaultColor.light_blue : Color(0xffffffff) ,
            extras: {"label": "v_home"},

          ),
          FluidNavBarIcon(
            icon: Icons.wallet_giftcard,
            selectedForegroundColor:widget.selectedIndex == 1 ? Color(0xffffffff) : Color(0xffE8E8E8) ,
            unselectedForegroundColor: Color(0xffE8E8E8),
            backgroundColor: widget.selectedIndex == 1 ? DefaultColor.light_blue : Color(0xffffffff) ,
            extras: {"label": "v_earning"},
          ),
          FluidNavBarIcon(
            icon: Icons.panorama_horizontal,
            selectedForegroundColor:widget.selectedIndex == 2 ? Color(0xffffffff) : Color(0xffE8E8E8) ,
            unselectedForegroundColor: Color(0xffE8E8E8),
            backgroundColor: widget.selectedIndex == 2 ? DefaultColor.light_blue : Color(0xffffffff) ,
            extras: {"label": "v_ticket"},
          ),
          FluidNavBarIcon(
            icon: Icons.account_circle_outlined,
            selectedForegroundColor:widget.selectedIndex == 3 ? Color(0xffffffff) : Color(0xffE8E8E8) ,
            unselectedForegroundColor: Color(0xffE8E8E8),
            backgroundColor: widget.selectedIndex == 3 ? DefaultColor.light_blue : Color(0xffffffff) ,
            extras: {"label": "v_account"},
          ),
        ],
        onChange: _handleNavigationChange,


        style: const FluidNavBarStyle(
          iconSelectedForegroundColor: Color(0xffffffff),
          iconUnselectedForegroundColor: Colors.white60,
        ),
        scaleFactor: 1.5,
        defaultIndex:widget.selectedIndex,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {


    switch(index){
      case 0:
        widget.onClicked;
        Navigator.pushNamed(context, "/v_home");
        break;
      case 1:
        widget.onClicked;
        Navigator.pushNamed(context, "/v_earning");
        break;
      case 2:
        widget.onClicked;
        Navigator.pushNamed(context, "/V_ticketScreen");
        break;
      case 3:
        widget.onClicked;
        Navigator.pushNamed(context, "/v_profile");
        break;
    }
      // _child = AnimatedSwitcher(
      //   switchInCurve: Curves.easeInOut,
      //   switchOutCurve: Curves.easeInOut,
      //   duration: Duration(milliseconds: 50),
      //   child: _child,
      // );
    });
    }
}
