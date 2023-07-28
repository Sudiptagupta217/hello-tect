import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';

class VReviewsScreen extends StatefulWidget {
  const VReviewsScreen({Key? key}) : super(key: key);

  @override
  State<VReviewsScreen> createState() => _VReviewsScreenState();
}

class _VReviewsScreenState extends State<VReviewsScreen> {
  final List<double> progressValues = [0.6, 0.4, 0.6, 0.8, 1.0];

  @override
  Widget build(BuildContext context) {
    final int totalratecount = 5;
    final int ratecount = 4;
    final IconData iconData = Icons.star;
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomTopBar(
            text: "Reviews",
            icon: const Icon(
              Icons.search_outlined,
              color: DefaultColor.dark_blue,
              size: 22,
            ),
            callback: () {},
          ),

          //Rating Overview
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Rating Overview",
                        style: TextStyle(
                            fontSize: 19, fontFamily: "Raleway",fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "$totalratecount",
                              style: TextStyle(fontSize: 45,fontFamily: "Raleway",fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "/5",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,fontFamily: "Raleway",),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          totalratecount,
                          (index) => Icon(
                            iconData,
                            color: DefaultColor.yellow,
                            size: 17,
                          ),
                        ),
                      ),
                      Text(
                        "350 Ratings",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffb3b3b3),fontFamily: "Raleway",),
                      )
                    ],
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      children: List.generate(
                        progressValues.length,
                        (index) => buildProgressWidget(index),
                      ),
                    ))
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                Row(
                  children: [
                    Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold,fontFamily: "Raleway",),
                    ),

                    SizedBox(width: 7,),

                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: DefaultColor.light_blue,
                      ),
                      child: const ClipOval(
                        child: Center(
                          child: Text(
                            "99",
                            style: TextStyle(
                              color: DefaultColor.white,
                              fontSize: 15,
                              // Adjust the font size based on the container size
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20,),


                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.shade200,
                         spreadRadius: 0.5,
                         blurRadius: 1
                       )
                     ]
                  ),

                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              ratecount,
                                  (index) => Icon(
                                iconData,
                                color: DefaultColor.yellow,
                                size: 17,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const Text("John",style: TextStyle(color: DefaultColor.light_grey,fontSize: 14,fontFamily: "Raleway",),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text(Utils.text3,style: TextStyle(fontSize: 16,fontFamily: "Raleway",color: Color(0xff242424))),
                      const SizedBox(height: 10,),
                      const Text("2 hours ago",style: TextStyle(color: DefaultColor.light_grey,fontSize: 16,fontFamily: "Raleway",),)


                    ],
                  ),
                ),



                const SizedBox(height: 20,),

                CustomButton(text: "VIEW MORE",textStyle: TextStyle(fontSize: 14,fontFamily: "Raleway",fontWeight: FontWeight.bold), foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue, padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.13,vertical: 17), callback: () {

                },)





              ],
            ),
          ),
        ]),
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
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
          height: 22,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          height: 9,
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
