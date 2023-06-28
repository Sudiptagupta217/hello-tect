import 'package:flutter/material.dart';

class ServicesBtn extends StatefulWidget {
  final String text;
  TextStyle? textStyle;
  final Image iconImage;
  final Color filedColor;
  final Color? borderColor;
  final VoidCallback? callback;
  final EdgeInsets margin;

  ServicesBtn(
      {Key? key,
      required this.margin,
      required this.text,
      this.textStyle,
      required this.iconImage,
      required this.filedColor,
      this.borderColor,
      this.callback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => ServiceBtnState();
}

class ServiceBtnState extends State<ServicesBtn> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 12),
      child: InkWell(
        onTap: () {
          widget.callback!();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: widget.margin,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: widget.borderColor!),
                shape: BoxShape.circle,
                color: widget.filedColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: widget.iconImage,
              ),
            ),

            Container(
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  widget.text,
                  style: widget.textStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
