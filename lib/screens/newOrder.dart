import 'package:flutter/material.dart';

import '../widgets/arrowButton.dart';
import 'contactUs.dart';

class NewOrder extends StatefulWidget {
  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
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
                'طلب جديد',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ArrowButton()
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactUs(),
                      ));
                },
                child: Container(
                  child: Image(image: AssetImage('assets/Group 85.png')),
                ),
              )),
              Expanded(
                  child: Container(
                child: Image(image: AssetImage('assets/Group 84.png')),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                child: Image(image: AssetImage('assets/Group 89.png')),
              )),
              Expanded(
                  child: Container(
                child: Image(image: AssetImage('assets/Group 88.png')),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
