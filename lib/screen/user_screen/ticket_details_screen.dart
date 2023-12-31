import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

import '../../utils/utils.dart';
import '../../widgets/custom_button.dart';

class TicketDetailsScreen extends StatefulWidget {
  const TicketDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TicketDetailsScreen> createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text: "Ticket Details",),

              SizedBox(height: 20,),
              
              Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 465,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 12,
                              offset: Offset(0, 1), // vertical offset
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
                          height: 275,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.5,
                                  blurRadius: 12,
                                  offset: Offset(0, 1), // vertical offset
                                ),
                              ]
                          ),
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                                  Text(
                                    "Repair Washing Machine",
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                                  ),
                              SizedBox(height: 7,),
                              Text(Utils.text4,style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontFamily: "Poppins"),),

                              SizedBox(height: 15,),

                              Row(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                          style: TextStyle(color: DefaultColor.black,fontFamily: "Poppins"),
                                        children: [
                                          TextSpan(text: "Pay Rate : ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                          TextSpan(text: "\$100", style: TextStyle(fontSize: 13,color: DefaultColor.grey))
                                        ]
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: DefaultColor.black,fontFamily: "Poppins"),
                                        children: [
                                          TextSpan(text: "Fix Rate : ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                          TextSpan(text: "\$100", style: TextStyle(fontSize: 13,color: DefaultColor.grey))
                                        ]
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 7,),

                              Row(
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: DefaultColor.black,fontFamily: "Poppins"),
                                        children: [
                                          TextSpan(text: "User: ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                          TextSpan(text: " John Doe", style: TextStyle(fontSize: 13))
                                        ]
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: const TextSpan(
                                        style: TextStyle(color: DefaultColor.black,fontFamily: "Poppins"),
                                        children: [
                                          TextSpan(text: "Paying By: ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                          TextSpan(text: "Cash", style: TextStyle(fontSize: 13,))
                                        ]
                                    ),
                                  ),
                                ],
                              ),

                            Spacer(),

                            Center(child: CustomButton(text: "ACCEPT",textStyle: TextStyle(fontFamily: "Raleway"), foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue, padding: EdgeInsets.symmetric(vertical: 14,horizontal: MediaQuery.of(context).size.width*0.11), callback: (){})),




                            ],
                          ),
                        )
                    )

                  ])

            ],
          ),
        ),
      ),
    );
  }
}
