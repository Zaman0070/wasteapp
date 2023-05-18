import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/arrowButton.dart';

class ContactUs extends StatelessWidget {
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
                  width: 40,
                ),
                Text(
                  'اتصل بنا',
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
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '+966 12-345-6789 ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'الواتس اب',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset('assets/whatsapp.png')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '+966 12-345-6789 ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'الهاتف',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.phone,
                  size: 35,
                  color: BC.appColor,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'حي 90 الرياض ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'العنوان',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/Location.png')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'wasit@gmail.com',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'البريد الألكتروني',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset('assets/Mail.png')
              ],
            ),
            Spacer(),
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
                    'طلب اعتراض',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: BC.appColor),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
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
            height: MediaQuery.of(context).size.height * 0.8,
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
                        'الطلبات السابقة',
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
                    'يرجي اختيار الطلب قبل تقديم الأعتراض',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
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
                      ],
                    ),
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
