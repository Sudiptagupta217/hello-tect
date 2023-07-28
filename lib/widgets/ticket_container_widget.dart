import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class TicketContainerWidget extends StatefulWidget {

  final Color containerColor;
  final Color textBgColor;
  final String totalToken;
  final String title;
  final Image walletImage;


  const TicketContainerWidget({Key? key,
  required this.containerColor,
    required this.textBgColor,
    required this.totalToken,
    required this.title,
    required this.walletImage
  }):super(key: key);

  @override
  State<TicketContainerWidget> createState() => _TicketContainerWidgetState();
}

class _TicketContainerWidgetState extends State<TicketContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Stack(
              children: [
                Positioned(
                    right: 10,
                    left: 10,
                    top: 10,
                    bottom: 9,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: widget.containerColor),
                      child: Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: widget.walletImage,
                      ),
                    )),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: widget.textBgColor),
                    child: Center(child: Text(widget.totalToken,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: DefaultColor.white),)),
                  ),
                )
              ],
            ),
          ),

          Text(widget.title,style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Lato",fontSize: 14),)
        ],
      ),
    );
  }
}
