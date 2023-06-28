import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Icon? icon;
  final Color foregroundColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final VoidCallback callback;

  CustomButton(
      {Key? key,
      required this.text,
      this.icon,
      this.textStyle,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.padding,
      required this.callback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.callback();
      },
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: widget.padding,
          elevation: 2,
          foregroundColor: widget.foregroundColor,
          backgroundColor: widget.backgroundColor),
      child: widget.icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon!,
                const SizedBox(
                  width: 4,
                ),
                Text(widget.text, style: widget.textStyle)
              ],
            )
          : Text(widget.text, style: widget.textStyle),
    );
  }
}
