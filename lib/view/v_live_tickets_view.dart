import 'package:flutter/material.dart';

import '../utils/default_colors.dart';
import '../utils/utils.dart';
import '../widgets/microwButton.dart';

class VLiveTicketsView extends StatefulWidget {
  const VLiveTicketsView({super.key});

  @override
  State<VLiveTicketsView> createState() => _VLiveTicketsViewState();
}

class _VLiveTicketsViewState extends State<VLiveTicketsView> {
  var ticketsList = [
    {'ticketsno': '12345', 'date': 'Today 12:05 pm', 'repairtproduct': 'Repair washing machine', "name":"John Doe","description":Utils.text3, 'location':'Mohali', "itemimage":'assets/images/item1.png', "usericon":'assets/images/user.png', },
    {'ticketsno': '12346', 'date': 'Today 12:35 pm', 'repairtproduct': 'Repair washing Ac',"name":"John Doe","description":Utils.text3, 'location':'Delhi', "itemimage":'assets/images/item1.png', "usericon":'assets/images/user.png', },
    {'ticketsno': '12347', 'date': 'Today 12:55 pm', 'repairtproduct': 'Repair washing Tv',"description":Utils.text3,"name":"John Doe", 'location':'Pune', "itemimage":'assets/images/item1.png', "usericon":'assets/images/user.png', },
    {'ticketsno': '12348', 'date': 'Today 01:05 pm', 'repairtproduct': 'Repair washing machine',"description":Utils.text3,"name":"John Doe", 'location':'Kolkata', "itemimage":'assets/images/item1.png', "usericon":'assets/images/user.png', },
    {'ticketsno': '12349', 'date': 'Today 05:23 pm', 'repairtproduct': 'Repair washing machine',"description":Utils.text3, "name":"John Doe",'location':'Mohali', "itemimage":'assets/images/item1.png', "usericon":'assets/images/user.png', },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        //   margin: EdgeInsets.only(top: 35),
        color: DefaultColor.bg_color,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            ListView(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: ticketsList.map((value) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 0.5,
                              blurRadius: 7,
                              offset: Offset(0, 1), // vertical offset
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 34,
                                  height: 34,
                                  padding: EdgeInsets.all(9),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffEBF2FF)),
                                  child: Image.asset(
                                    "assets/images/wallet.png",
                                    // Replace with the URL of your image
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text("Ticket No: "+ value["ticketsno"].toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  value["date"].toString(),
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xffbfbfbf),fontFamily: "Poppins"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width*0.2,
                                      child: Container(
                                        height: 70,
                                          child: Image.asset("assets/images/item1.png"))),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.6,
                                    padding: EdgeInsets.only(right: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(value["repairtproduct"].toString(),style: TextStyle(fontSize: 16,color: DefaultColor.black,fontWeight: FontWeight.bold,fontFamily: "Inter"),),
                                        SizedBox(height: 7,),
                                        Text(value["description"].toString(),maxLines: 2,style: TextStyle(fontSize: 14,color: DefaultColor.grey,fontFamily: "Inter"),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text("Location: ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: DefaultColor.black,fontFamily: "Poppins"),),
                                 Text(value["location"].toString(),style: TextStyle(fontSize: 11, color: DefaultColor.grey,fontFamily: "Poppins"),),
                                 Spacer(),
                              ClipOval(
                                child: Image.asset(
                                  'assets/images/user.png',
                                  fit: BoxFit.fill,
                                  width: 35.0,
                                  height: 35.0,
                                ),
                              ),
                                 SizedBox(width: 2,),
                                 Text(value["name"].toString(),style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: DefaultColor.black,fontFamily: "Inter"),),
                                 Spacer(),
                                 MicroButton(text: 'VIEW DETAILS', width: 100,height: 35,backgroundColor: DefaultColor.light_blue,foregroundColor: DefaultColor.white,onPressed: () {
                                   Navigator.pushNamed(context, "/v_ticket_details_screen");
                                 },)

                               ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                }).toList())
          ],
        ));
  }
}
