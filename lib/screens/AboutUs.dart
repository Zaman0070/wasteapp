import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                    'دليل الأستخدام',
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
                    Container(
                      width: 60,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: BC.logo_clr,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xff707070))),
                      child: Center(
                          child: Text(
                        'LOGO',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'نشكر لكم ثقتكم بتطبيق ( وسيط ) ونسعى لخدمتكم على أرقى مستوى يليق بكم ونتمنى أن تكون خدمتنا عند حسن ظنكم'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'تطبيق ( وسيط )يقوم بضمان تعاملاتك المالية كوسيط بينك وبين الطرف الآخر، على أن تقوم بتحويل المبلغ للتطبيق وفي حالة انتهت العملية سنقوم بتحويل المبلغ إلى المستحق. أما إذا لم يتم الانتهاء من العملية نقوم باسترجاع المبلغ لك '),
                  ],
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
                      'فيديو تعريفي للتطبيقة',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: BC.appColor,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'V1',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    ':اصدار التطبيق',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/road logo.png'),
                  Text(
                    'تم تصميم وتطوير التطبيق بواسطة',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
