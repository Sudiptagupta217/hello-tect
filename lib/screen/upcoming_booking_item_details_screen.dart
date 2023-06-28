import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';

import '../widgets/custom_topbar_without_search.dart';

class UpcomingBookingItemDetailsScreen extends StatefulWidget {
  const UpcomingBookingItemDetailsScreen({Key? key}) : super(key: key);

  @override
  State<UpcomingBookingItemDetailsScreen> createState() => _UpcomingBookingItemDetailsScreenState();
}

class _UpcomingBookingItemDetailsScreenState extends State<UpcomingBookingItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTopBarWithoutSearch(text: "Booking Details"),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  "Booking Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                    children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 425,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 5,
                            offset: Offset(0, 2), // vertical offset
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),

                  ),
                      Positioned(
                        top: 0,
                          left: 0,
                          right: 0,
                          child:
                          Container(
                            height:200,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage('assets/images/itemimage.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                      ),
                      Positioned(
                        top: 190,
                          right: 0,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.all(15),
                        height: 235,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            spreadRadius: 0.5,
                          )]
                        ),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Text(
                            "Lorem Ipsum Text",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                              Spacer(),
                              Text(
                                "\$ 45",
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: DefaultColor.light_blue),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text("14 Oct 2022",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),
                          SizedBox(height: 15,),
                          Text(Utils.text4,style: TextStyle(fontSize: 13,color: Colors.grey.shade500),),

                         Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomButton(text: "CANCEL",textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold), foregroundColor: Colors.white, backgroundColor: Color(0xffdd3333), padding: EdgeInsets.symmetric(horizontal: 35,vertical: 15), callback: (){}),
                              CustomButton(text: "CHANGE DATE",textStyle: TextStyle(fontSize: 13,fontWeight: FontWeight.bold), foregroundColor: Colors.black, backgroundColor: Color(0xffE8E8E8), padding: EdgeInsets.symmetric(horizontal: 22,vertical: 15), callback: (){})
                            ],
                          ),
                          Spacer(),

                        ],
                      ),
                          )
                      )

                ])
              ]),
        ),
      ),
    );
  }
}
