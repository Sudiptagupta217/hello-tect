import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';

import '../widgets/buttom_manu.dart';
import '../widgets/default_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 3;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: CustomFluidNavBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              child: Stack(
                children: [
                  SizedBox(
                    height: 370,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                      bottom: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: 300,
                          color: DefaultColor.light_blue,
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
                          ))),
                  Positioned(
                      top: 150,
                      left: 25,
                      right: 25,
                      bottom: 10,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 20),
                        height: 305,
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
                          children: [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/Kyc1screen");
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.yellow.shade700,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 5),
                                      child: const Text("Complete Your KYC",
                                          style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black87))),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, "/EditProfileScreen");
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    size: 17,
                                  ),
                                )
                              ],
                            ),

                            Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(width: 0.3,color: DefaultColor.light_blue),
                                    color: Colors.white,
                                  ),
                                ),
                                Positioned(
                                  top: 6,
                                    left: 6,
                                    bottom: 6,
                                    right: 6,
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
                                  top: 10,
                                  left: 10,right: 10,bottom: 10,
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

                            SizedBox(height: 10,),
                            
                            Text("Hi, John Doe", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("@johndoe234", style: TextStyle(fontSize: 14,color:  Colors.grey),),

                          ],
                        ),
                      ))
                ],
              ),
            ),
            
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap:(){Navigator.pushNamed(context, "/MyPlansScreen"); },
                    child: Container(
                      width:MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 50),
                        child: Text(" My Plans", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                  ),

                  SizedBox(height: 25,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/MyBookingsScreen");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: DefaultColor.white,
                          boxShadow: [BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(0, 3),
                              blurRadius: 3,
                              spreadRadius: 1)]
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Row(
                          children: const [
                            Text("My Bookings", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: DefaultColor.light_blue),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,size: 17,color: DefaultColor.light_blue,)
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25,),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/InformationScreen");
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 50),
                        child: Text("Information", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                  ),
                  const SizedBox(height: 35,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/referandearn");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 50),
                        child: Text("Refer & Earn", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                  ),
                  const SizedBox(height: 35,),
                  Container(
                      padding: EdgeInsets.only(left: 50),
                      child: Text("Settingss", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                  const SizedBox(height: 40,),
                  
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: CustomButton(text: "LOGOUT",
                          icon: Icon(Icons.logout),
                          foregroundColor: DefaultColor.white,
                          backgroundColor: DefaultColor.light_blue,
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
                          callback: (){}),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
