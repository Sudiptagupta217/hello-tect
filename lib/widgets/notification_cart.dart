import 'package:flutter/material.dart';

class NotificationCart extends StatefulWidget {
  final Image image;
  final String title;
  final String time;

  const NotificationCart({Key? key, required this.image,required this.title, required this.time}) : super(key: key);

  @override
  State<NotificationCart> createState() => _NotificationCartState();
}

class _NotificationCartState extends State<NotificationCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 100,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius:0.4,
                blurRadius: 5,
                offset: Offset(0, 1), // vertical offset
              ),
            ],
          ),
          child: Column(children: [
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.close,
                  size: 16,
                  color: Colors.grey.shade600,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 45,
                    width: 45,
                    child:
                      widget.image,
                    ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width:
                        MediaQuery.of(context).size.width * 0.60,
                        child:  Text(
                         widget.title,
                          maxLines: null,
                          style: const TextStyle(
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600),
                        )),
                    const SizedBox(height: 10,),
                    Text(widget.time, maxLines: null, style: TextStyle(fontSize: 12,color: Color(0xffbfbfbf),fontFamily: "Poppins",),),
                    SizedBox(height: 7,)
                  ],
                )
              ],
            )
          ]),
        )

    );
  }
}
