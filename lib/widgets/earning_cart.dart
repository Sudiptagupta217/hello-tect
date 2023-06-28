import 'package:flutter/material.dart';

import 'default_colors.dart';

class EarningCart extends StatefulWidget {
  final Color outerColor;
  final Color innerColor;
  final String latter;
  final String month;
  final String value;

  const EarningCart(
      {Key? key,
        required this.outerColor,
        required this.innerColor,
        required this.latter,
        required this.month,
        required this.value
      })
      : super(key: key);

  @override
  State<EarningCart> createState() => _EarningCartState();
}

class _EarningCartState extends State<EarningCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: Offset(0, 3), // vertical offset
          ),
        ], color: Color(0xfffbfbff), borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 7,
                    child: Container(
                      decoration: BoxDecoration(
                          color: widget.outerColor,
                          borderRadius: BorderRadius.circular(7)),
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Positioned(
                    top: 17.5,
                    left: 14.5,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: widget.innerColor,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: Text(widget.latter,
                        style: TextStyle(
                            color: DefaultColor.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, top: 5),
              child: Text(widget.month,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7.0, top: 10, bottom: 10),
              child: Text(
                "\$ ${widget.value}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
