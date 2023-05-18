import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Function() onPressed;

  MyButton({
    this.name,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10),
              primary: BC.appColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          )),
    );
  }
}
