import 'package:flutter/material.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';

class safty extends StatefulWidget {
  @override
  State<safty> createState() => _SaftyState();
}

class _SaftyState extends State<safty> {
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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/Group 65.png',
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
                      'الضمانات',
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
                Text(
                    'وسيط تطبيق سعودي عبارة عن مؤسسة مسجلة لدى وزارة التجارة بمسمى '),
                SizedBox(
                  height: 10,
                ),
                Text('مزود بإتصال آمن ومشفر لحماية معلومات عملائنا'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'مرخص من المركز السعودي لمعلومات الشبكة لمزاولة الأعمال التجارية إلكترونيا'),
                SizedBox(
                  height: 10,
                ),
                Text('عمل موثّق لدى وزارة التجارة عبر منصة معروف'),
                SizedBox(
                  height: 10,
                ),
                Text('يملك حسابات بنكية معتمدة تجارياً بإسم'),
                Text(
                    'مصمم بشكل بسيط وسهل ومناسب لجميع الاجهزة اللوحية والجوالات '),
                SizedBox(
                  height: 10,
                ),
                Text('يملك عضويات لدى شركات الشحن'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    ' مسجلة في منصة بادر التابعة لمدينة الملك عبدالعزيز للعلوم والتقنية '),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
