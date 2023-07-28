import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/utils.dart';

import '../../widgets/custom_topbar_without_search.dart';
import '../../utils/default_colors.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({Key? key}) : super(key: key);

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {

  final String referCodeNumber = 'YSHHSEFN24366';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            CustomTopBarWithoutSearch(text: "Refer & Earn"),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                 children: [
                   Container(
                     height: 170,
                     margin: EdgeInsets.only(top: 15,bottom: 20,left: 10,right: 10),
                     child: Image.asset("assets/images/share.png",fit: BoxFit.fill),
                   ),
                   Text("Get \$1 Monthly",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: DefaultColor.light_blue),),
                   
                   SizedBox(height: 15,),
                   
                   Text("For every new user you refer",style: TextStyle(fontSize: 15,color: Colors.grey.shade600)),
                   SizedBox(height: 20,),

                   Text("Every  time your fefer someone \nyou earn & \$1 monthly",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey.shade600)),
                   SizedBox(height: 35,),

                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 60,
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(50),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 0.2,
                           blurRadius: 10,
                           offset: Offset(2, 3),
                         ),
                       ],
                     ),

                     child: Row(
                       children: [
                         InkWell(
                             onTap:()
                               async {
                                 await Clipboard.setData(
                                     const ClipboardData(text: "YSHHSEFN24366"));
                                 ScaffoldMessenger.of(context).showSnackBar(
                                   const SnackBar(
                                     content: Text('Copied!',style: TextStyle(fontSize: 16)),
                                   ),
                                 );
                             },
                             child: Icon(Icons.copy,color: DefaultColor.light_blue,)),
                         Spacer(),
                         Text(referCodeNumber,style: TextStyle(fontSize: 15),),
                         Spacer(),
                         SizedBox(width: 20,)
                       ],
                     ),
                   ),

                   SizedBox(height: 35,),

                   Divider(height: 3,color: Colors.black54,),
                   
                   SizedBox(height: 20,),
                   
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                       child: Text(Utils.text3,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey.shade700),)),

                   SizedBox(height: 35,),
                   
                   CustomButton(text: "SHARE",textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold), foregroundColor: Colors.white, backgroundColor: DefaultColor.light_blue, padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.37,vertical: 21), callback: () {

                   },),

                   SizedBox(height: 50,)


                 ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
