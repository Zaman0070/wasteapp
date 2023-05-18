import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/arrowButton.dart';

class HowToUse extends StatefulWidget {
  @override
  State<HowToUse> createState() => _HowToUseState();
}

class _HowToUseState extends State<HowToUse> {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'خطوات الطلب',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: BC.appColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: BC.appColor)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' -1',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'قدم الطلب',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'بعد تحويل المبلغ يتم ارسال طلب الخدمة موضح فيها جميع التفاصيل المهمة',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' -2',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' انتظار الرد',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'سيتم أشعار الطرف الأخر بوصول الحوالة لإتمام الطلب وستصلك رسالة بعلم الطرف الأخر بوصول المبلغ',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' -3',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' اتمام الطلب',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'بعد ان تستلم طلبك سيتم تحويل المبلغ للطرف الأخر',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
