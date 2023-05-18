import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/SplashOne.dart';
import 'package:wasit_bussiness_app/widgets/logo.dart';

import '../constants/colors.dart';

class OnBaording extends StatefulWidget {
  @override
  State<OnBaording> createState() => _OnBaordingState();
}

class _OnBaordingState extends State<OnBaording> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashOne(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoConatiner(),
          SizedBox(
            height: 20,
          ),
          Text(
            'وسيط نبني الثقة',
            style: TextStyle(
                fontSize: 25, color: BC.appColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
