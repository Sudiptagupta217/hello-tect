import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';

class DetailedReceiptScreen extends StatefulWidget {
  const DetailedReceiptScreen({Key? key}) : super(key: key);

  @override
  State<DetailedReceiptScreen> createState() => _DetailedReceiptScreenState();
}

class _DetailedReceiptScreenState extends State<DetailedReceiptScreen> {
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
                  "Detailed Receipt",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                    children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 515,
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
                        height: 325,
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
                            "Lorem Ipsum Text",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),

                              Spacer(),

                              Text(
                                "\$ 45.00",
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: DefaultColor.light_blue),
                              ),

                            ],
                          ),

                          const SizedBox(height: 5,),

                          Text("14 Oct 2022",style: TextStyle(fontSize: 15,color: Colors.grey.shade600),),

                          const SizedBox(height: 15,),

                          Text(Utils.text4,style: TextStyle(fontSize: 13,color: Colors.grey.shade500),),

                          const SizedBox(height: 15,),

                          const Divider(color: Colors.grey, height: 2),

                          const SizedBox(height: 15,),

                          Row(
                            children: const [
                              Text("Antivirus Exit Mobile",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                              Spacer(),
                              Text("425.00"),
                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            children: const [
                              Text("Keyloger Security",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                              Spacer(),
                              Text("\$10.00"),
                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            children: const [
                              Text("Total",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                              Spacer(),
                              Text("\$45.00"),
                            ],
                          ),

                          SizedBox(height: 5,),

                          Row(
                            children: const [
                              Text("Tax",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                              Spacer(),
                              Text("\$25.00"),
                            ],
                          ),

                          SizedBox(height: 15,),

                          const Divider(color: Colors.grey, height: 2),

                          SizedBox(height: 10,),

                          const Center(child: Text("TOTAL: \$49.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: DefaultColor.light_blue),))

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
