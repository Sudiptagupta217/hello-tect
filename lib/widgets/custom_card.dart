import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

class CustomCard extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String text1;
  final String text2;
  final buttontapped;

  const CustomCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.text1,
      required this.text2,
      required this.buttontapped})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0.0, 1.0)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20, top: 10),
                        height: 145,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25)),
                            child:
                                Image.asset(widget.image, fit: BoxFit.cover)),
                      ),
                      Positioned(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffDDDDDD),
                                blurRadius: 2.0,
                                spreadRadius: 0.5,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffffce31),
                              ),
                              Text("5")
                            ],
                          ),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  )),
              Container(
                height: 165,
                width: MediaQuery.of(context).size.width * 0.52,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Price: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.text1,
                      style: TextStyle(fontSize: 14, color: Color(0xff616161)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      widget.text2,
                      style: TextStyle(fontSize: 14, color: Color(0xff616161)),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        CustomButton(
                            text: "Call",
                            textStyle: TextStyle(
                                fontSize: 15,
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
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          foregroundColor: Colors.white,
                          backgroundColor: DefaultColor.light_blue,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                          callback: () {widget.buttontapped();},
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
