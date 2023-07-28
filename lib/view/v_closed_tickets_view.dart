import 'package:flutter/material.dart';

import '../utils/default_colors.dart';

class VClosedTicketsView extends StatefulWidget {
  const VClosedTicketsView({super.key});

  @override
  State<VClosedTicketsView> createState() => _VClosedTicketsViewState();
}

class _VClosedTicketsViewState extends State<VClosedTicketsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35),
      color: DefaultColor.bg_color,
      child: Text("Closed Tickets"),
    );
  }
}
