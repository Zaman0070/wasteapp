import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/login.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';
import '../widgets/logo.dart';

class SplashTwo extends StatefulWidget {
  @override
  State<SplashTwo> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
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
            height: 50,
          ),
          LogoConatiner(),
          SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage('assets/Finance insurance.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: BC.appColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  'هو وسيط مالي يحمي المشتري والبائع عن طريق تحصيل الأموال وحفظها  الي ان يتم تسليم وفحص المنتج',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                MyButton(
                  name: 'التالي',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
    ;
  }
}
