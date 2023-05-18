import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';
import 'package:wasit_bussiness_app/widgets/textFormfield.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';

class BankAccount extends StatefulWidget {
  @override
  State<BankAccount> createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/background.png',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'حساب العمولة',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArrowButton()
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('5%'),
                Text(
                  'عمولة التطبيق',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: BC.appColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: BC.appColor)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'قيمة السلعة او الخدمة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'العمولة شامل الضريبة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    onPressed: () {},
                    name: 'احسب العمولة',
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
