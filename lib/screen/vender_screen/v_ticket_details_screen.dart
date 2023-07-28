import 'package:flutter/material.dart';

import '../../utils/default_colors.dart';
import '../../utils/utils.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_topbar_without_search.dart';
import '../../widgets/microwButton.dart';

class VTicketDetailsScreen extends StatefulWidget {
  const VTicketDetailsScreen({super.key});

  @override
  State<VTicketDetailsScreen> createState() => _VTicketDetailsScreenState();
}

class _VTicketDetailsScreenState extends State<VTicketDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

          child: Column(
             children: [
               CustomTopBarWithoutSearch(text:"Ticket Details",),

               SizedBox(height: 10,),


               Stack(
                   children: [
                     Container(
                       width: MediaQuery.of(context).size.width * 0.85,
                       height: 475,
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
                           height: 285,
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
                                 children: const [
                                   Text(
                                     "Repair Washing Machine",
                                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                                   ),

                                   Spacer(),

                                   Text(
                                     "\$ 45.00",
                                     style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: DefaultColor.light_blue,fontFamily: "Poppins"),
                                   ),

                                 ],
                               ),


                               const SizedBox(height: 10,),

                               Text(Utils.text4,style: TextStyle(fontSize: 12,color: Colors.grey.shade500,fontFamily: "Poppins"),),


                               const SizedBox(height: 15,),

                               Row(
                                 children: const [
                                   Text("Date: ",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Poppins",fontSize: 14,color: DefaultColor.black)),
                                   Text("14 Oct 2022",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: "Poppins", color: Colors.grey)),
                                   Spacer(),
                                   Text("Time: ",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Poppins",fontSize: 14,color: DefaultColor.black)),
                                   Text("11:00 am",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: "Poppins", color: Colors.grey)),
                                 ],
                               ),

                               SizedBox(height: 10,),

                               Row(
                                 children: const [
                                   Text("Name: ",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Poppins",fontSize: 14,color: DefaultColor.black)),
                                   Text("John Doe",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: "Poppins",color: Colors.grey)),
                                   Spacer(),
                                   Text("Phone No: ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,fontFamily: "Poppins",color: DefaultColor.black)),
                                   Text("98373 37646",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,fontFamily: "Poppins",color: Colors.grey)),
                                 ],
                               ),

                               SizedBox(height: 10,),

                               Row(
                                 children: const [
                                   Text("Location: ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,fontFamily: "Poppins",color: DefaultColor.black)),
                                   Text("7 Phase, Mohali",style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Poppins",fontSize: 14,color: Colors.grey)),
                                 ],
                               ),

                             Spacer(),


                              // MicroButton(text: 'SUBMIT MY DEAL',height: 40,width: 10,backgroundColor: DefaultColor.light_blue,foregroundColor: DefaultColor.white,onPressed: (){},)

                               Center(
                                 child: CustomButton(text: 'SUBMIT MY DEAL',
                                 foregroundColor: DefaultColor.white,
                                   backgroundColor: DefaultColor.light_blue,
                                   padding: EdgeInsets.symmetric(vertical: 16,horizontal: MediaQuery.of(context).size.width*0.06),
                                   callback: (){Navigator.pushNamed(context, "/v_submit_deal_screen");},
                                   textStyle: TextStyle(fontSize: 16,fontFamily: "Raleway",),
                                 ),
                               ),

                               SizedBox(height: 5,)

                             ],
                           ),
                         )
                     )

                   ])



             ],
           ),

      ),
    );
  }
}
