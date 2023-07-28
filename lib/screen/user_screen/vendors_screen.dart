import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';

class VendorsScreen extends StatefulWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  State<VendorsScreen> createState() => _VendorsScreenState();
}

class _VendorsScreenState extends State<VendorsScreen> {

  final List<double> progressValues = [0.6, 0.4, 0.6, 0.8, 1.0];
  @override
  Widget build(BuildContext context) {

    final int ratecount = 5;
    final IconData iconData = Icons.star;


    return Scaffold(

      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: DefaultColor.light_blue,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(30.0))),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        "Vendors",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: DefaultColor.bg_color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                  ),
                ),
                margin: EdgeInsets.only(top: 30),
                //  padding: EdgeInsets.only(top: 20, right: 25, left: 25),

                child: Column(children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(30.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(
                              0, 4), // Offset to apply shadow at the bottom
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/images/vendor.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 12,
                                  ),
                                  Text("5.0"),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 165,
                          width: MediaQuery.of(context).size.width * 0.52,
                          margin: EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lorem Ipsom",
                                  style: TextStyle( fontSize: 22,fontFamily: "Raleway", fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price: ",
                                    style: TextStyle(fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500, fontSize: 16),
                                  ),
                                  Text(
                                    "\$20",
                                    style: TextStyle(fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500, fontSize: 15),
                                  ),
                                ],
                              ),

                              //
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.circle_rounded,size: 6,color: Color(0xff616161)),
                                  SizedBox(width: 7,),
                                  Text(
                                    Utils.text1,
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, fontFamily: "Poppins",color: Color(0xff616161)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Icon(Icons.circle_rounded,size: 6,color: Color(0xff616161)),
                                  ),
                                  const SizedBox(width: 7,),

                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.47,
                                    child: Text(
                                      textAlign: TextAlign.start,
                                      Utils.text2,
                                      maxLines: 2,
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, fontFamily: "Poppins",color: Color(0xff616161)),
                                    ),
                                  ),

                                ],
                              ),

                              Spacer(),
                              //
                              Row(
                                children: [
                                  Spacer(),
                                  CustomButton(
                                      text: "Call",
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Raleway",
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87),
                                      foregroundColor: Colors.black,
                                      backgroundColor: Color(0xffE1E1E1),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 25),
                                      callback: () {}),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomButton(
                                    text: "BOOK",
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Raleway",
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                    foregroundColor: Colors.white,
                                    backgroundColor: DefaultColor.light_blue,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 25),
                                    callback: () {
                                      Navigator.pushNamed(context, "/brandmodelscreen");
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),



//About US
                SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About me",
                          style: TextStyle(
                            fontFamily: "Raleway",
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          Utils.lorem,
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Inter",
                              color: Colors.grey.shade500,
                              wordSpacing: 3),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/specialization.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Specialization",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text(
                                "Electrical Engineer",
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/language.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Language",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text(
                                "English, Hindi, Punjabi ",
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/experience.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Experience",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text(
                                "5 Years",
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/charges.png",
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Charges",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              Text(
                                "\$20.0/hr",
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),

                      ],
                    ),
                  ),



//rating container
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(0, 4), // Offset to apply shadow at the bottom
                            ),
                          ],
                      ),
                      child:  Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    "Rating Overview",
                                    style: TextStyle(
                                      fontFamily: "Raleway",
                                        fontSize: 19, fontWeight: FontWeight.w700),
                                  ),
                                SizedBox(height: 15,),
                                Container(
                                  height: 45,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("$ratecount",style: TextStyle(fontSize: 45,fontFamily: "Inter",fontWeight: FontWeight.w500),),
                                      Text("/5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),

                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    ratecount,
                                        (index) => Icon(iconData,color: DefaultColor.yellow,size: 17,),
                                  ),
                                ),
                                Text("350 Ratings",style: TextStyle(fontSize: 14,color: Color(0xffb3b3b3)),)


                              ],
                            ),
                          ),


                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            child: Column(
                              children: List.generate(
                                progressValues.length,
                                    (index) => buildProgressWidget(index),
                              ),
                            )
                          )
                        ],
                      ),

                      ),


//Check Similar Technicians
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20,top:2),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Check Similar Technicians",
                        style: TextStyle(
                          fontFamily: "Raleway",
                            fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 10, top: 15),
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffDDDDDD),
                                    blurRadius: 6.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                color: Colors.white),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    height:95,
                                    child: Stack(
                                      children: [
                                        Image.asset("assets/images/user.png",
                                          height: 80,
                                          width: 80,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          child: Container(
                                            padding:
                                            EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(
                                                      0xffDDDDDD),
                                                  blurRadius: 6.0,
                                                  spreadRadius: 2.0,
                                                  offset: Offset(
                                                      0.0, 0.0),
                                                )
                                              ],
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.star, color: Color(0xffffce31),),
                                                Text("5")
                                              ],
                                            ),
                                          ),
                                          top: 65,
                                          left: 11,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Astro Vivek K",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.currency_rupee, size: 15, color: Color(0xff341a9d),),
                                      Text("30/min",style: TextStyle(color: Color(0xff616161)),)
                                    ],
                                  ),
                                ),
                                Container(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
                                    decoration: BoxDecoration(
                                        color: DefaultColor.light_blue,
                                        borderRadius:
                                        BorderRadius.circular(
                                            50)),
                                    child: Text("Book", style: TextStyle(color: Colors.white, fontSize: 14,),
                                    )
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )


                ]),
              )
            ],
          ),
        ),
      ),
    );
  }



  Widget buildProgressWidget(int index) {
    double progress = progressValues[index];
    int number = progressValues.length - index;

    return Row(

      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Text(
          number.toString(),
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10,height: 30,),
        Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: 12,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress,
            child: Container(
              decoration: BoxDecoration(
                color: DefaultColor.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

      ],
    );
  }


}
