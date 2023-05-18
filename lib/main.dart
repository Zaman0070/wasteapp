import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wasit_bussiness_app/screens/onBoarding.dart';
import 'package:wasit_bussiness_app/widgets/bottomNavi.dart';

import 'constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            colorScheme: ThemeData().colorScheme.copyWith(primary: BC.appColor),
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: FirebaseAuth.instance.currentUser != null
          ? BottomNavigationExample()
          : OnBaording(),
    );
  }
}
