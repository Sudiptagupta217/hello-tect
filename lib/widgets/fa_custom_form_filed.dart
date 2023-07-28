import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FACustomFormFiled extends StatefulWidget {

   String? hintText;
   FaIcon? icon;
  final double width;
  final double? margin;
  int? maxline;
   final TextEditingController? controller;
   double? height;
  double? redious;
   Color? backgroundColor;

   FACustomFormFiled({Key? key ,
     this.redious,
     this.hintText,
     this.controller,
     this.icon,
     required this.width,
     this.maxline,
     this.height=57,
     this.backgroundColor,
     this.margin}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FACustomFormFiledState();
}

class _FACustomFormFiledState extends State<FACustomFormFiled> {
  @override
  Widget build(BuildContext context) {

    double contentPaddingVertical = 18.0;

    if (widget.height == 55) {
      contentPaddingVertical = 18.0;
    }

    return Container(
        child: Center(
          child: Container(
            width:widget.width,
            //MediaQuery.of(context).size.width*0.90,
            margin: EdgeInsets.only(top: widget.margin ?? 20),
            height: widget.height,
            decoration: BoxDecoration(
              color:widget.backgroundColor ?? Color(0xFFF8F8F9),
              borderRadius: BorderRadius.circular(widget.redious ?? 27),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: .1,
                  offset: Offset(0, 1),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: .1,
                  offset: Offset(0, -1),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: .1,
                  offset: Offset(1, 0),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: .1,
                  offset: Offset(-1, 0),
                ),
              ],
            ),

            child: Padding(
              padding: widget.icon == null? EdgeInsets.only(left: 10.0): EdgeInsets.zero,
              child: TextFormField(
                controller: widget.controller,
                maxLines:widget.maxline ,
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
                decoration: InputDecoration(
                 // hintText: widget.icon==null ? "${widget.hintText}" : widget.hintText,
                  hintText:  widget.hintText,
                  hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 16,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                  prefixIcon:  widget.icon != null ?
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 15),
                    child: widget.icon,
                  ): null,

                // contentPadding: EdgeInsets.symmetric(vertical: contentPaddingVertical,horizontal: 10),

                  contentPadding: EdgeInsets.symmetric(
                    vertical: contentPaddingVertical,
                    horizontal: widget.icon != null ? 0 : 10, // Adjust horizontal padding based on icon presence
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFFF8F8F9),),
                    borderRadius:  BorderRadius.circular(widget.redious ?? 33),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFFF8F8F9),),
                    borderRadius:  BorderRadius.circular(widget.redious ?? 33),
                  ),
                ),
              ),
            ),

          ),
        )
    );
  }
}
