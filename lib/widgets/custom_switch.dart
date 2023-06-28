import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

class CustomSwitch extends StatefulWidget {
  bool value;

  CustomSwitch(
      {Key? key,
      required this.value,
     })
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 42.0,
      height: 19.0,
      valueFontSize: 2.0,
      toggleSize: 17.0,
      padding: 1,
      activeToggleColor: Colors.white,
      inactiveToggleColor: Colors.white,
      activeColor:DefaultColor.light_blue,
      inactiveColor:Color(0xffEAEAEA) ,
      value: widget.value,
      onToggle: (val) {
        setState(() {
          widget.value = val;
        });
      },
    );
  }
}
