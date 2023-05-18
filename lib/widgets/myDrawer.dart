import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/AboutUs.dart';
import 'package:wasit_bussiness_app/screens/bankAccount.dart';
import 'package:wasit_bussiness_app/screens/contactUs.dart';
import 'package:wasit_bussiness_app/screens/howToUse.dart';
import 'package:wasit_bussiness_app/screens/messages.dart';
import 'package:wasit_bussiness_app/screens/profile/profile.dart';
import 'package:wasit_bussiness_app/screens/wallet.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';

import '../constants/colors.dart';
import '../screens/notification.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: BC.appColor,
      child: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => FavoriteItem(),
            //   ));
            // },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 110),
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 30, left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'طلب جديد',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage('assets/Add.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Wallet()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'المحفظة',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        image: AssetImage('assets/Wallet.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Messages()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الدردشة',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        image: AssetImage('assets/Chat.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (context) => viewcart()));
                  // },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'طلباتي',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        image: AssetImage('assets/Bag.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الملف الشخصي',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Image(
                        image: AssetImage('assets/Person.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    _ButtonPressed(context);
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => viewcart()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اللغة',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        image: AssetImage('assets/Languaage.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotificationsPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اشعاراتي',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(Icons.notifications, color: Colors.white, size: 25)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BankAccount()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'حساب العمولة',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Image(
                        image: AssetImage('assets/Calculator.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (context) => viewcart()));
                  // },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'أراء العملاء',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/Users.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HowToUse()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'دليل الأستخدام (فيديو)',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/How to use.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (context) => viewcart()));
                  // },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الشروط و الأحكام',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('assets/policy.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutUs()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'عن التطبيق',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Image(
                        image: AssetImage('assets/Info.png'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ContactUs()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اتصل بنا',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.phone, size: 25, color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'تسجيل الخروج',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
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
                        'تغيير اللغة',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الأنجليزية',
                        style: TextStyle(
                          fontSize: 18,
                          color: BC.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'العربية',
                        style: TextStyle(
                          fontSize: 18,
                          color: BC.appColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onPressed: () {},
                    name: 'تغيير اللغة',
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
