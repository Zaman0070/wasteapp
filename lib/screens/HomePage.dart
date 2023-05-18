import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wasit_bussiness_app/screens/howToUse.dart';
import 'package:wasit_bussiness_app/screens/messages.dart';

import 'package:wasit_bussiness_app/screens/newOrder.dart';
import 'package:wasit_bussiness_app/widgets/myDrawer.dart';

import '../constants/colors.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

import '../widgets/button.dart';
import 'historyEmpty.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colors = [Colors.white, Colors.yellow, Colors.red, Colors.white];
  List images = [
    'assets/slider/Message.png',
    'assets/slider/How to use.png',
    'assets/slider/Add.png',
    'assets/slider/Delivery.png',
    'assets/slider/Verified.png',
    'assets/slider/Info.png',
  ];
  List names = [
    'اراء العملاء',
    'دليل الأستخدام',
    'طلب جديد',
    'الضمانات',
    'عن التطبيق',
    'وسيط مواقع التسوق',
  ];
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List pages = [
    ['Messages', Messages()],
    ['HowtoUse', HowToUse()],
    ['NewOrder', NewOrder()],
    ['NewOrder', NewOrder()],
    ['NewOrder', NewOrder()],
    ['HistoryEmpty', HistoryEmpty()],
  ];
  PageController _pageController =
      PageController(viewportFraction: 0.25, keepPage: true, initialPage: 0);
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      endDrawer: MyDrawer(),
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
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        size: 40,
                        color: BC.appColor,
                      )),
                  Container(
                    width: 60,
                    height: 60,
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
                  IconButton(
                      onPressed: () {
                        _scaffold.currentState.openEndDrawer();
                      },
                      icon: Icon(
                        Icons.menu_rounded,
                        size: 40,
                        color: BC.appColor,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.18,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Swiper(
                        // control: new SwiperControl(
                        //   color: Color(0xff38547C),
                        // ),
                        onIndexChanged: (value) {
                          setState(() {
                            _current = value;
                          });
                        },
                        itemCount: colors.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: colors[index],
                          );
                        },
                        layout: SwiperLayout.DEFAULT,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(colors, (value, url) {
                          return Container(
                            width: _current == value ? 5.0 : 5,
                            height: _current == value ? 20.0 : 20,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                            decoration: BoxDecoration(
                              borderRadius: _current == value
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(20),
                              color: _current == value
                                  ? BC.appColor
                                  : Colors.grey[400],
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180, // card height
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    controller: _pageController,
                    onPageChanged: (int index) =>
                        setState(() => _index = index),
                    itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1.3 : 0.5,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                pages[_index][1]));
                                  },
                                  child: CircleAvatar(
                                    radius: 35.h,
                                    backgroundColor: BC.appColor,
                                    child: Image.asset(images[i]),
                                  )),
                            ),
                            Text(
                              names[i],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: BC.appColor),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 40.h,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: BC.appColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            previousPage();
                          },
                          icon: Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.w),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                  Container(
                      width: 40.h,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: BC.appColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            nextPage();
                          },
                          icon: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الطلبات النشطة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: BC.appColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: BC.appColor,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: BC.appColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              'تحويل المبلغ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 4),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: BC.appColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              'قيد التنفيذ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 4),
                              decoration: BoxDecoration(
                                  color: BC.appColor,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              'استلام المبلغ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 4),
                              decoration: BoxDecoration(
                                  color: BC.appColor,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Text(
                              'تقديم الطلب',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      name: 'تفاصيل الطلب',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewOrder(),
                            ));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void nextPage() {
    _pageController.animateToPage(_pageController.page.toInt() + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void previousPage() {
    _pageController.animateToPage(_pageController.page.toInt() - 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }
}
