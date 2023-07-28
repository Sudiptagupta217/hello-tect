import 'package:flutter/material.dart';

class MicroButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final double height;
  final double width;


  const MicroButton({
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.foregroundColor,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width:width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
           Radius.circular(20)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: foregroundColor,
                fontSize: 13.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
