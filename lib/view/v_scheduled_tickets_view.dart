import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class VScheduledTicketsView extends StatefulWidget {
  const VScheduledTicketsView({super.key});

  @override
  State<VScheduledTicketsView> createState() => _VScheduledTicketsViewState();
}

class _VScheduledTicketsViewState extends State<VScheduledTicketsView> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 35),
      color: DefaultColor.bg_color,
     child: Text("Scheduled Tickets"),
    );
  }
}
