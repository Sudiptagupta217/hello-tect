import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatefulWidget {

   String? hintText;
   Icon? icon;
  final double width;
  final double? margin;
   final TextEditingController? controller;
  int? maxline;
  TextInputType? textInputType;
  double? height;
  double? redious;

   Color? backgroundColor;

   CustomFormFiled({Key? key ,
     this.redious,
     this.hintText,
     this.controller,
     this.icon,
     this.textInputType,
     required this.width,
     this.maxline,
     this.height=57,
     this.backgroundColor,
     this.margin}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
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
                keyboardType: widget.textInputType,
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
                    padding: const EdgeInsets.only(left: 8.0),
                    child: widget.icon,
                  ): null,

                // contentPadding: EdgeInsets.symmetric(vertical: contentPaddingVertical,horizontal: 10),

                  contentPadding: EdgeInsets.symmetric(
                    vertical: contentPaddingVertical,
                    horizontal: widget.icon != null ? 0 : 10, // Adjust horizontal padding based on icon presence
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xF8F8F9),),
                    borderRadius:  BorderRadius.circular(widget.redious ?? 33),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xF8F8F9),),
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
