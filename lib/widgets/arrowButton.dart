import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ArrowButton extends StatelessWidget {
  final Function onPressed;
  ArrowButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: BC.appColor, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
        ));
  }
}
