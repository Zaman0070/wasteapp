import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';
import 'beneficiaryServiceDetail.dart';

class OrdersDetailsBuyer extends StatefulWidget {
  @override
  State<OrdersDetailsBuyer> createState() => _OrdersDetailsBuyerState();
}

class _OrdersDetailsBuyerState extends State<OrdersDetailsBuyer> {
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
                  'تفاصيل الطلب للمشتري',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'ريال',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '200',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'المبلغ',
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
                      Row(
                        children: [
                          Text(
                            'تمديد',
                            style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: BC.appColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'ايام',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '7',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'المدة',
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
                        '------------',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'ملاحظات',
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
                      Container(
                        width: 60,
                        height: 60,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: BC.logo_clr,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff707070))),
                        child: Center(
                            child: Text(
                          'Pic',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        )),
                      ),
                      Text(
                        'صورة السلعة',
                        textAlign: TextAlign.right,
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
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(
              name: 'تم ارسال الطلب',
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => beneficiaryServiceDetail(),
                    ));
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
                    'محادثة الطرف الأخر',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: BC.appColor,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _ButtonPressed(context);
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
                    'قيم التطبيق',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: BC.appColor,
                        fontSize: 16),
                  ),
                ),
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

  void _ButtonPressed(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff737373),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'تأكيد الطلب',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: BC.appColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'هل أنت متأكد من إتمام الخدمة',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: BC.appColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'الغاء',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: BC.appColor,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: MyButton(
                        name: 'إتمام الخدمة',
                        onPressed: () {},
                      )),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
            ),
          );
        });
  }
}
