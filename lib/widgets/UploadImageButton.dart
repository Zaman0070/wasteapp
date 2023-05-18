import 'package:flutter/material.dart';

import '../constants/colors.dart';

class UploadButton extends StatelessWidget {
  Function() press;

  UploadButton({this.press});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press;
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: BC.appColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'تحميل صورة السلعة',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: BC.appColor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
