import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';
import 'beneficiaryServiceDetail.dart';

class Help extends StatefulWidget {
  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                    'طلب أعتراض',
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
                              'مشتري',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'صفة طالب الأعتراض',
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: BC.lightGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        maxLength: 6,
                        decoration: InputDecoration(
                          hintText: 'أكتب رسالتك هنا',
                          contentPadding: EdgeInsets.only(top: 0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
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
                            'مرفقات',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: BC.appColor,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      name: 'إرسال',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
