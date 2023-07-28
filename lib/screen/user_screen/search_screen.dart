import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';

import '../../utils/default_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text: "Search"),

              Container(
                width: MediaQuery.of(context).size.width*.9,
                child: Column(
                  children: [
                    // Container(
                    //    height: 55,
                    //   decoration:  BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(30)),
                    //     color: Colors.white,
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.shade300,
                    //       blurRadius: 15,
                    //       spreadRadius: 0.6,
                    //       offset: Offset(1, 1)
                    //     )]
                    //   ),
                    //   child: TextFormField(
                    //     style: const TextStyle(color: Colors.black,
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 24),
                    //     decoration: InputDecoration(
                    //         focusedBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(30),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white, width: 1)),
                    //         enabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(30),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white, width: 1)),
                    //         disabledBorder: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(30),
                    //             borderSide: const BorderSide(
                    //                 color: Colors.white, width: 1)),
                    //         prefixIcon: const Icon(Icons.search,
                    //             color: DefaultColor.light_blue)),
                    //   ),
                    // ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                    boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                          blurRadius: 15,
                          spreadRadius: 0.6,
                          offset: Offset(1, 1)
                        )],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: TextField(
                          style: TextStyle(fontSize: 22),
                          decoration: InputDecoration(
                            hintText: 'Search here',
                            hintStyle: TextStyle(fontSize: 16),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 15,),

                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: DefaultColor.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                                height: 70,
                                width: 60,
                                child: Image.asset("assets/images/mob.png",fit: BoxFit.fill,)),
                            SizedBox(width: 7,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Text("Real meal",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500,fontSize: 16)),
                                SizedBox(height: 5,),
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", maxLines: null,style: TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w400,fontSize: 11,color: Color(0xff666666))),
                              ],),
                            )
                          ],
                        ),
                      );
                    },)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }
}
