import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/plan_card.dart';

import '../../widgets/custom_topbar_without_search.dart';
class MyPlansScreen extends StatefulWidget {
  const MyPlansScreen({Key? key}) : super(key: key);
  @override
  State<MyPlansScreen> createState() => _MyPlansScreenState();
}
class _MyPlansScreenState extends State<MyPlansScreen> {

  var ourPlans=[
    {
   "headerColor":"0xFF00A1B9",
   "userType":"Home User",
   "price":"9.99",
   "validity":"A Month",
    "offers":["Online Tech Support",
              "Offline Tech Support",
              "Upto 3-5 Devices Allowed",
               "2 Pc - 3 Mobile Devices"],
   "buttonTitle":"Choose This Plan"
    },

    {
      "headerColor":"0xffDC5961",
      "userType":"Pro User",
      "price":"19.99",
      "validity":"One year",
      "offers":["Online Tech Support",
                "Offline Tech Support",
                "Upto 5-6 Devices Allowed",
                "5 Pc - 5 Mobile Devices"],
      "buttonTitle":"Choose This Plan"
    },

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTopBarWithoutSearch(text: "Our Plans"),
            SizedBox(height: 20,),
            Text("Choose Your Plan",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
            SizedBox(height: 25,),


            // Container(
            //   height: 480,
            //   width: MediaQuery.of(context).size.width*0.7,
            //   decoration: BoxDecoration(
            //       color: DefaultColor.light_blue,
            //     borderRadius: BorderRadius.circular(20),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.shade300,
            //         offset: Offset(0, 3),
            //         spreadRadius: 1,
            //         blurRadius: 11
            //       )
            //     ]
            //   ),
            //
            //   child: Column(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           color: DefaultColor.light_blue,
            //           borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            //         ),
            //         height: 140,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Text("Home User",style: TextStyle(fontSize: 17,color: DefaultColor.white)),
            //             SizedBox(height: 10,),
            //               Row(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text("\$ ",style: TextStyle(fontSize: 17,color: DefaultColor.white,fontWeight: FontWeight.bold),),
            //                   Text("9.99",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700,color: DefaultColor.white),),
            //                 ],
            //             ),
            //             SizedBox(height: 10,),
            //             Text("A Month",style: TextStyle(fontSize: 16,color: DefaultColor.white),),
            //           ],
            //         ),
            //       ),
            //
            //
            //       Container(
            //         width: MediaQuery.of(context).size.width,
            //         height: 340,
            //         decoration: BoxDecoration(
            //           color: DefaultColor.white,
            //           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Text("Online Tech Support",style: TextStyle(fontSize: 16,color: Colors.grey),),
            //             Text("Offline Tech Support",style: TextStyle(fontSize: 16,color: Colors.grey),),
            //             Text("Upto 3-5 Devices",style: TextStyle(fontSize: 16,color: Colors.grey),),
            //             Text("Allowed 2 Pc - 3 Mobile Devices",style: TextStyle(fontSize: 16,color: Colors.grey),),
            //
            //             CustomButton(text: "Choose This Plan",textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue, padding: EdgeInsets.symmetric(vertical: 16,horizontal: MediaQuery.of(context).size.width*0.07), callback: (){}),
            //
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            //
            // )


            Container(
              //width: MediaQuery.of(context).size.width * 0.7,
            //  padding: EdgeInsets.only(left: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: ourPlans.asMap().entries.map((entry) {
                    final index = entry.key;
                    final value = entry.value;

                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 50.0 : 8.0, // Apply left spacing of 20 to the first item, 8 to the rest
                        right: 8.0, bottom: 15// Apply right spacing to all items
                      ),
                     // padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 15),
                      child: PlanCard(
                        headerColor: Color(int.parse(value["headerColor"].toString())),
                        buttonColor: Color(int.parse(value["headerColor"].toString())),
                        userType: value["userType"].toString(),
                        price: value["price"].toString(),
                        validity: value["validity"].toString(),
                        buttonTitle: value["buttonTitle"].toString(),
                        offers: value["offers"] as List<String>,
                        callback: () {},
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),




            // PlanCard(headerColor: DefaultColor.light_blue,
            //  userType: "Home User",
            //   price: "9.99",
            //   validity: "A Month",
            //   buttonColor: DefaultColor.light_blue,
            //   buttonTitle: "Choose This Plan",
            //   offers: ["asdfhs oiso d i s9io siod","as sd oi 9sid osi dsd ","asads s do osd pds pf","asdasd sido  dsi osdos do sij"],
            //   callback: () {
            //
            //
            //
            //
            //   },
            // )

          ],
        ),
      ),
    );
  }
}