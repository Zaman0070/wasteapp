import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/AboutUs.dart';
import 'package:wasit_bussiness_app/screens/HomePage.dart';
import 'package:wasit_bussiness_app/screens/newOrder.dart';
import 'package:wasit_bussiness_app/widgets/myDrawer.dart';

import '../constants/colors.dart';

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 2;

  List _pages = [
    AboutUs(),
    NewOrder(),
    HomePage(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      key: _scaffold,
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: BC.appColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/material-share.png'), label: "مشاركة"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Icon awesome-plus-circle.png'),
              label: "طلب جديد"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Icon ionic-ios-home.png'),
              label: "الرئيسية"),
        ],
      ),
    );
  }
}
