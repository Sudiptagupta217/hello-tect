import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormFiled extends StatefulWidget {

  final String hintText;
   Icon? icon;
  final double width;
  final double? margin;
  int? maxline;
  double? height;

   CustomFormFiled({Key? key , required this.hintText,this.icon, required this.width, this.maxline, this.height=60,this.margin}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Container(
            width:widget.width,
            //MediaQuery.of(context).size.width*0.90,
            margin: EdgeInsets.only(top: widget.margin ?? 20),
            height: widget.height,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F9),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  offset: Offset(0, 2),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  offset: Offset(0, -2),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  offset: Offset(2, 0),
                ),
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 1,
                  offset: Offset(-2, 0),
                ),
              ],
            ),

            child: TextFormField(
              maxLines:widget.maxline ,
              autovalidateMode:
              AutovalidateMode.onUserInteraction,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.grey.shade500),
                prefixIcon:  widget.icon,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xFFF8F8F9), width: 1.2),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xFFF8F8F9), width: 1.2),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),

          ),
        )
    );
  }
}
