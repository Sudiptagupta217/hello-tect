import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/microwButton.dart';
import '../../widgets/vender_buttom_manu.dart';

class VProfileViewScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => VProfileViewScreenState();


}


class VProfileViewScreenState extends State<VProfileViewScreen>{
  int vselectedIndex = 3;
  void onClicked(int index) {
    setState(() {
      vselectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: VenderBottomMenu(
        selectedIndex: vselectedIndex,
        onClicked: onClicked,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [

            Container(
              height:  MediaQuery.of(context).size.height*0.80,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    height:  MediaQuery.of(context).size.height*0.80,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      top: 0,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.3,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: 320,
                          color: DefaultColor.light_blue,
                          child:
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 18,
                                    color: DefaultColor.white,
                                  ),
                                ),
                                Spacer(),
                                Center(
                                  child: Container(
                                    child: const Text(
                                      "Profile",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: DefaultColor.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.5),
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ))),
                  Positioned(
                      left: 25,
                      right: 25,
                      bottom: 10,
                      height: MediaQuery.of(context).size.height*0.61,
                      child: Container(
                        padding:
                        EdgeInsets.all(20),
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

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(width: 0.3,color: DefaultColor.light_blue),
                                        color: Colors.white,
                                      ),
                                    ),
                                    Positioned(
                                      top: 4,
                                      left: 4,
                                      bottom: 4,
                                      right: 4,
                                      child:  Container(
                                        height: 88,
                                        width: 88,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          // border: Border.all(width: 1,color: DefaultColor.light_blue),
                                          color: DefaultColor.light_blue,
                                        ),
                                      ),),

                                    Positioned(
                                      top: 8,
                                      left: 8,right: 8,bottom: 8,
                                      child:  Container(
                                        height: 78,
                                        width: 78,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          // border: Border.all(width: 1,color: DefaultColor.light_blue),
                                          color: DefaultColor.light_blue,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: Image.asset("assets/images/user.png"),
                                        ),
                                      ),),

                                  ],
                                ),

                                SizedBox(width: 15,),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 6,),
                                    Text("Hi, John Doe", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Poppins",),),
                                    Text("@johndoe234", style: TextStyle(fontSize: 12,color:  Colors.grey,fontFamily: "Poppins",),),

                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        MicroButton(text: 'Call',width: 70,height: 30,backgroundColor: Color(0xffe1e1e1),foregroundColor: DefaultColor.black, onPressed: () {  },),

                                        SizedBox(
                                          width: 10,
                                        ),
                                        MicroButton(text: 'Book',width: 70,height: 30,backgroundColor: DefaultColor.light_blue,foregroundColor: DefaultColor.white, onPressed: () {  },),

                                      ],
                                    )


                                  ],
                                ),
                              ],
                            ),

                            SizedBox(height: 10,),

                            Text("About me",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,fontFamily: "Raleway",)),
                            SizedBox(height: 4,),
                            Text(Utils.text5,maxLines: 5,style: TextStyle(fontSize: 13,color: DefaultColor.light_grey,fontFamily: "Inter")),

                            SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/specialization.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Specialization",
                                      style: TextStyle(
                                          fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "Poppins",)),
                                  Spacer(),
                                  Text(
                                    "Electrical Engineer",
                                    style:
                                    TextStyle(fontSize: 10, color: Colors.grey,fontFamily: "Poppins",),
                                  ),
                                ],
                              ),
                            ),


                            Divider(),

                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/language.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Language",
                                      style: TextStyle(
                                        fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "Poppins",)),
                                  Spacer(),
                                  Text(
                                    "English, Hindi, Punjabi ",
                                    style:
                                    TextStyle(fontSize: 10, color: Colors.grey,fontFamily: "Poppins",),
                                  ),
                                ],
                              ),
                            ),

                            Divider(),


                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/experience.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Experience",
                                      style: TextStyle(
                                        fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "Poppins",)),
                                  Spacer(),
                                  Text(
                                    "5 Years",
                                    style:
                                    TextStyle(fontSize: 10, color: Colors.grey,fontFamily: "Poppins",),
                                  ),
                                ],
                              ),
                            ),

                            Divider(),


                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/charges.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Charges",
                                      style: TextStyle(
                                        fontSize: 13, fontWeight: FontWeight.w600,fontFamily: "Poppins",)),
                                  Spacer(),
                                  Text(
                                    "\$20.0/hr",
                                    style:
                                    TextStyle(fontSize: 10,fontFamily: "Poppins", color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),




                          ],
                        ),
                      )
                  )
                ],
              ),
            ),


           Container(
             height:  MediaQuery.of(context).size.height*0.12,
             width: MediaQuery.of(context).size.width,

             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CustomButton(text: 'Go Back',textStyle: TextStyle(fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),backgroundColor: DefaultColor.light_blue,foregroundColor: DefaultColor.white,
                 padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.15,vertical: 14),callback: () {Navigator.pushNamed(context, "/v_profile");},
                 ),
               ],
             ),

           )



          ],
        ),
      ),
    );
  }

}