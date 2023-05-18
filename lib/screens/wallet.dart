import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/completePurchaseOrder.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';
import '../widgets/arrowButton.dart';

class Wallet extends StatelessWidget {
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
        child: Column(
          children: [
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
                  'المحفظة',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ArrowButton(
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: BC.appColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'ريال',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'الرصيد الحالي',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: BC.lightGrey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/WalletS.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: MyButton(
                name: 'سحب الرصيد',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CompleteOrder()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
