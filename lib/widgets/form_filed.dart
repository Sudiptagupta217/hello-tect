import 'package:flutter/material.dart';

class FormFiled extends StatefulWidget {
  final String title;
  const FormFiled({Key? key, required this.title}) : super(key: key);

  @override
  State<FormFiled> createState() => _FormFiledState();
}

class _FormFiledState extends State<FormFiled> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 15),
          child: Text(widget.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        ),
        SizedBox(height: 5,),
        Container(
          height: 55,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(22))),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 17),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Color(0xffD3D3D3), width: 1),
                borderRadius: BorderRadius.circular(22.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                BorderSide(color: Color(0xffD3D3D3), width: 1),
                borderRadius: BorderRadius.circular(23.0),
              ),
            ),
          ),
        ),
      ],
    );

  }
}
