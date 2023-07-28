import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class QueryFloatingButton extends StatefulWidget{
  final VoidCallback callback;

  QueryFloatingButton(
      {Key? key, required this.callback}) : super(key: key);

  @override
  State<StatefulWidget> createState() => QueryFloatButtonState();
}

class QueryFloatButtonState extends State<QueryFloatingButton>{
  @override
  Widget build(BuildContext context) {
   return Container(
       child: Row(
         children: [
           Spacer(),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 20),
             child: FloatingActionButton(
               onPressed: (){
                 widget.callback();
               },
               backgroundColor: DefaultColor.light_blue,
               child: Padding(
                 padding: const EdgeInsets.only(left: 13.0,right: 13,bottom: 13,top: 15),
                 child: Image.asset("assets/images/query.png"),
               ),
             ),
           )
         ],
       )
   );
  }

}