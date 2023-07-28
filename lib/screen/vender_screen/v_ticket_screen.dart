import 'package:flutter/material.dart';

import '../../utils/default_colors.dart';
import '../../view/booking_item_view.dart';
import '../../view/upcoming_booking_item_view.dart';
import '../../view/v_closed_tickets_view.dart';
import '../../view/v_live_tickets_view.dart';
import '../../view/v_scheduled_tickets_view.dart';
import '../../widgets/custom_topbar_without_search.dart';
import '../../widgets/vender_buttom_manu.dart';

class VTicketScreen extends StatefulWidget {
  const VTicketScreen({ Key? key}) : super(key: key);

  @override
  State<VTicketScreen> createState() => _VTicketScreenState();
}

class _VTicketScreenState extends State<VTicketScreen> {
  int vselectedIndex = 2;

  void onClicked(int index) {
    setState(() {
      vselectedIndex = index;
    });
  }

  Color container1Color = DefaultColor.green;
  Color container2Color = DefaultColor.offwhite;
  Color container3Color = DefaultColor.offwhite;
  Color text1Color = DefaultColor.offwhite;
  Color text2Color = Color(0xff1e1e1e);
  Color text3Color = Color(0xff1e1e1e);

  int selectedContainer = 1;

  void _selectContainer(int containerNumber) {
    setState(() {
      selectedContainer = containerNumber;
      if (containerNumber == 1) {
        container1Color =  DefaultColor.green;
        container2Color = DefaultColor.offwhite;
        container3Color = DefaultColor.offwhite;
        text1Color = DefaultColor.offwhite;
        text2Color = Color(0xff1e1e1e);
        text3Color =Color(0xff1e1e1e);
      } else if (containerNumber == 2) {
        container1Color =DefaultColor.offwhite;
        container2Color = DefaultColor.green;
        container3Color = DefaultColor.offwhite;
        text1Color = Color(0xff1e1e1e);
        text2Color = DefaultColor.offwhite;
        text3Color = Color(0xff1e1e1e);
      } else if (containerNumber == 3) {
        container1Color = DefaultColor.offwhite;
        container2Color = DefaultColor.offwhite;
        container3Color = DefaultColor.green;
        text1Color = Color(0xff1e1e1e);
        text2Color = Color(0xff1e1e1e);
        text3Color = DefaultColor.offwhite;
      }
    });
  }

  Widget _buildSelectedContainer() {
    if (selectedContainer == 1) {
      return VLiveTicketsView();
    } else if (selectedContainer == 2) {
      return VScheduledTicketsView();
    } else if (selectedContainer == 3) {
      return VClosedTicketsView();
    }
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: VenderBottomMenu(
        selectedIndex: vselectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text: "Tickets"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => _selectContainer(1),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: container1Color,
                              ),
                              child: Center(
                                child: Text(
                                  'Live Tickets',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Raleway",
                                    color: text1Color,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => _selectContainer(2),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: container2Color,
                              ),
                              child: Center(
                                child: Text(
                                  'Scheduled Tickets',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Raleway",
                                    color: text2Color,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => _selectContainer(3),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: container3Color,
                              ),
                              child: Center(
                                child: Text(
                                  'Closed Tickets',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Raleway",
                                    color: text3Color,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: _buildSelectedContainer(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
