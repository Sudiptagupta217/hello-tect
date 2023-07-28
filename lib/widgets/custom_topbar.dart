import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class CustomTopBar extends StatefulWidget {
  final String text;
   VoidCallback callback;
   Icon icon;

  CustomTopBar({
    Key? key,
    required this.text,
  required  this.icon,
    required this.callback,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomTopBarState();
}

class CustomTopBarState extends State<CustomTopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.only(top: 60,bottom: 20),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 24,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                    color: DefaultColor.dark_blue,
                  ),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                child:Text(widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: DefaultColor.light_blue,
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap:() {
                widget.callback();
              },
                child: Align(
                  alignment: Alignment.topRight,
                    child: widget.icon)
            )

          ],
        ),
      ),

    );
  }
}
