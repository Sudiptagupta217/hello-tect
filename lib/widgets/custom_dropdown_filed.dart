import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String text;
  String selectedOption;
  Color? bgcolor=Color(0xFFF8F8FC);
  Color? hintcolor;
  Color? textColor;
  final double width;
  final List<String> listname;

  CustomDropdown(
      {Key? key,
      required this.text,
       this.bgcolor,
       this.hintcolor,
       this.textColor,
      required this.selectedOption,
      required this.width,
      required this.listname})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: widget.width,///////
            //margin: EdgeInsets.only(top: 20),
            height: 60,
            decoration: BoxDecoration(
              color: widget.bgcolor,///////
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 16,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: DropdownButtonFormField<String>(
              hint: Text(widget.text,style: TextStyle(fontSize: 16,color: widget.hintcolor),),//////
              value: null,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF00A1B9), width: 1.4),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0x00F6F6F6), width: 1.4),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  widget.selectedOption = newValue!;
                });
              },
              items: widget.listname.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,style: TextStyle(color: widget.textColor)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
