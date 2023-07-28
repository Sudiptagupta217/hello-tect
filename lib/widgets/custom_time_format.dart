import 'package:flutter/material.dart';

class CustomTimeFormat extends StatefulWidget {
  final String? hintText;
  final Icon? icon;
  final double width;
  final double? margin;
  final double? textpading;
  final int? maxline;
  final double? height;
  final double? redious;
  final Color? backgroundColor;

  CustomTimeFormat({
    Key? key,
    this.redious,
    this.hintText,
    this.icon,
    required this.width,
    this.maxline,
    this.textpading,
    this.height = 57,
    this.backgroundColor,
    this.margin,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomTimeFormatState();
}

class _CustomTimeFormatState extends State<CustomTimeFormat> {
  TimeOfDay? _selectedTime; // Use TimeOfDay to store the selected time

  @override
  Widget build(BuildContext context) {
    double contentPaddingVertical = 18.0;

    if (widget.height == 55) {
      contentPaddingVertical = 18.0;
    }

    return Container(
      child: Center(
        child: Container(
          width: widget.width,
          margin: EdgeInsets.only(top: widget.margin ?? 20),
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? Color(0xFFF8F8F9),
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
            padding: widget.icon == null ? EdgeInsets.only(left: 10.0) : EdgeInsets.zero,
            child: InkWell(
              onTap: () => _selectTime(context), // Call _selectTime instead of _selectDate
              child: Row(
                children: [
                  widget.icon != null
                      ? Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(
                      widget.icon!.icon,
                      color: Colors.grey,
                    ),
                  )
                      : Container(),
                  SizedBox(width: widget.icon != null ? 8.0 : 0),
                  Padding(
                    padding: EdgeInsets.only(left: widget.textpading??0),
                    child: Text(
                      _selectedTime != null
                          ? "${_selectedTime!.hour}:${_selectedTime!.minute}"
                          : widget.hintText ?? '',
                      style: TextStyle(
                        color: _selectedTime != null ? Colors.black : Colors.grey,
                        fontSize: 16,
                        fontWeight: _selectedTime != null ? FontWeight.w500 : FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }
}
