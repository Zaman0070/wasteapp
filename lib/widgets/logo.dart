import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LogoConatiner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.2,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: BC.logo_clr,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0xff707070))),
      child: Center(
          child: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 25,
        ),
      )),
    );
  }
}
