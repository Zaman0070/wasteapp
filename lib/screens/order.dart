import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';
import '../widgets/arrowButton.dart';
import 'orderDetails.dart';

class Orders extends StatefulWidget {
  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
                  'الطلبات النشطة',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#32813132',
                        style: TextStyle(
                          fontSize: 13,
                          color: BC.appColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'رقم الطلب',
                        style: TextStyle(
                          fontSize: 16,
                          color: BC.lightGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04:00 23/02/2023',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'التاريخ و الوقت',
                        style: TextStyle(
                          fontSize: 16,
                          color: BC.lightGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'توصيل طلبية',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'الغرض',
                        style: TextStyle(
                          fontSize: 16,
                          color: BC.lightGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'بأنتظار استلام المبلغ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'حالة الطلب',
                        style: TextStyle(
                          fontSize: 16,
                          color: BC.lightGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyButton(
                    name: 'التالي',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrdersDetails()));
                    },
                  )
                ],
              ),
            ),
            // Image.asset(
            //   'assets/add_shopping_cart.png',
            // ),
            // Text(
            //   'لا يوجد طلبات نشطة',
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: BC.appColor,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
