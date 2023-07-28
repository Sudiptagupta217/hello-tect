import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/utils.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/default_colors.dart';
import '../../view/add_offers_view.dart';
import '../../view/auto_boost_view.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/services_btn.dart';
import '../../widgets/ticket_container_widget.dart';
import '../../widgets/vender_buttom_manu.dart';

class VHomeScreen extends StatefulWidget {
  const VHomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _VHomeScreenState();
}

class _VHomeScreenState extends State<VHomeScreen> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();


  ///////////
  Color container1Color = DefaultColor.green;
  Color container2Color = DefaultColor.offwhite;
  //////////////////

  double _containerHeight = 190;

  int _selectedIndex = 0;

  List<Widget> _pages = [

    AutoBoost(),

    Container(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(Utils.text3,style: TextStyle(color:Color(0xff242424),fontFamily: "Inter",fontWeight: FontWeight.w400,fontSize: 14)),
          Text(Utils.text3,style: TextStyle(color:Color(0xff242424),fontFamily: "Inter",fontWeight: FontWeight.w400,fontSize: 14)),
        ],
      ),
    ),

    AddOffers()

  ];

  bool isSwitched = true;

  int vselectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      vselectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: VenderBottomMenu(
        selectedIndex: vselectedIndex,
        onClicked: onClicked,
      ),
body: SingleChildScrollView(
  child: Container(
   // padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height:85,
                        child: Image.asset("assets/images/user.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Tara Singh",
                              style: TextStyle(
                                  color: Color(0xff14C25A),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Lato",
                                  letterSpacing: 0.02),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.notifications_none,
                              color: Colors.black,
                              size: 22,
                            )
                          ],
                        ),
                        const Text(
                          "Email: johndor@gmail.com",
                          style: TextStyle(color: Colors.black, fontSize: 11,fontFamily: "Lato"),
                        ),
                        const Text(
                          "Phone: 112334453",
                          style: TextStyle(color: Colors.black, fontSize: 11,fontFamily: "Lato"),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 25,
                        width: 25,
                        //child: GestureDetector(
                        child: const Image(
                          image: AssetImage("assets/images/vector.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25,),

              Text("Tickets", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Raleway")),

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketContainerWidget(containerColor: Color(0xffD3FFE4),textBgColor: DefaultColor.green,totalToken: "15",walletImage: Image.asset("assets/images/wallet_green.png"),title: "Live Orders",),

                    TicketContainerWidget(containerColor: Color(0xffFFEED9),textBgColor: Color(0xffFF8B00),totalToken: "15",walletImage: Image.asset("assets/images/wallet_orange.png"),title: "Scheduled Orders",),

                    TicketContainerWidget(containerColor: Color(0xffE7EFFF),textBgColor: Color(0xff0059FF),totalToken: "15",walletImage: Image.asset("assets/images/wallet_blue.png"),title: "Closed Orders",),
                  ],
                ),
              ),

              SizedBox(height: 25,),

              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25,),
            ],
          ),
        ),



        Container(
          height: 100,
          color: Color(0xffFFF9EB),
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //available
             // Online
              RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 20,
                        color: Colors.grey),
                    children: [
                      TextSpan(text: 'Available',style: TextStyle(fontSize: 24,color: DefaultColor.black,fontWeight: FontWeight.bold, fontFamily: 'Poppins' )),
                      TextSpan(text: "\nONLINE", style: TextStyle(color: DefaultColor.green, fontSize: 14, fontFamily: "Poppins",fontWeight: FontWeight.bold))
                    ]
                ),
              ),
              Spacer(),

              CustomSwitch(value: isSwitched,onTap:(p0) {

              },activeColor: DefaultColor.green,)


            ],
          ),
        ),


        Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child:

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Time Table",style: TextStyle(fontSize: 20,fontFamily: "Raleway",fontWeight: FontWeight.w700),),
              Container(child:
                // TableCalendar(
                //   calendarFormat: _calendarFormat,
                //   selectedDayPredicate: (day) {
                //     return isSameDay(_selectedDay, day);
                //   },
                //   focusedDay: _focusedDay,
                //   headerVisible: true, // Show the header
                //   headerStyle: const HeaderStyle(
                //     formatButtonVisible: false, // Hide the format button
                //   ), // Customize the header style if needed
                //   firstDay: DateTime.utc(2022, 1, 1),
                //   lastDay: DateTime.utc(2023, 12, 31),
                //   onFormatChanged: (format) {
                //     setState(() {
                //       _calendarFormat = format;
                //     });
                //   },
                //   onDaySelected: (selectedDay, focusedDay) {
                //     setState(() {
                //       _selectedDay = selectedDay;
                //       _focusedDay = focusedDay;
                //     });
                //   },
                // ),

              TableCalendar(
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                focusedDay: _focusedDay,
                headerVisible: true, // Show the header
                headerStyle: const HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: false,
                  leftChevronIcon: Icon(Icons.chevron_left),
                  rightChevronIcon: Icon(Icons.chevron_right),
                  leftChevronPadding: EdgeInsets.zero,
                  rightChevronPadding: EdgeInsets.zero,
                  titleTextStyle: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Raleway",fontSize: 16)
                ),
                firstDay: DateTime.utc(2022, 1, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
              )

              ),
            ],
          ),

        ),


        Container(
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            boxShadow: [BoxShadow(
                color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              offset: Offset(0,2),
              blurRadius: 3
            )
            ]
          ),
          height: _containerHeight,
          padding: EdgeInsets.all(15),
          child: Column(children: [
            Container(
              color: Color(0xffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  CustomButton(
                    text: "Auto Boost",
                    textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, fontFamily: "Raleway"),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 15),
                    callback: () {
                      setState(() {
                        _selectedIndex = 0;
                        _containerHeight = 170;

                      });
                    },
                  ),

                  SizedBox(width: 5,),

                  CustomButton(
                    text: "Boost History",
                    textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, fontFamily: "Raleway"),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 3, horizontal: 13),
                    callback: () {
                      setState(() {
                        _selectedIndex = 1;
                        _containerHeight = 170;
                      });
                    },
                  ),

                  const SizedBox(width: 5,),

                  CustomButton(
                    text: "Add Offers",
                    textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600, fontFamily: "Raleway"),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 16
                    ),
                    callback: () {
                      setState(() {
                        _selectedIndex = 2;
                        _containerHeight = 330;
                      });
                    },
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Expanded(
              child: IndexedStack(
                index: _selectedIndex,
                children: _pages,
              ),
            ),
          ]),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Give Us Feedback",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,fontFamily: "Raleway"),),
              SizedBox(height: 7,),
             // CustomFormFiled(maxline: 7,width: MediaQuery.of(context).size.width,height: 150,redious: 10,margin: 5,hintText: "rrrrr",backgroundColor: DefaultColor.white),
              CustomFormFiled(hintText: '  ',maxline:7, width: double.infinity,margin: 5,height: 150,backgroundColor: DefaultColor.white,),


              SizedBox(height: 5),
              Row(
                children: [
                  Spacer(),
                  CustomButton(text: "SUBMIT",
                      textStyle: TextStyle(fontFamily: "Raleway",fontWeight: FontWeight.w500,fontSize: 14),
                      foregroundColor: DefaultColor.white,
                      backgroundColor: DefaultColor.light_blue,
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 12),
                      callback: (){}),
                ],
              ),
              SizedBox(height: 10),

            ],
          ),
        ),










      ],
    ),
  ),
),
    );
  }
}

