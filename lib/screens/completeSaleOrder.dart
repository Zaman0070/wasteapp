import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/screens/theSeller.dart';
import 'package:wasit_bussiness_app/widgets/button.dart';
import 'package:wasit_bussiness_app/widgets/textFormfield.dart';

import '../constants/colors.dart';
import '../widgets/arrowButton.dart';

class CompleteSaleOrder extends StatefulWidget {
  @override
  State<CompleteSaleOrder> createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteSaleOrder> {
  bool mada = false;

  bool second = false;

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
                    'إكمال طلب الخدمة',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ArrowButton(
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 80,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '#32813132',
                          style: TextStyle(
                            fontSize: 13,
                            color: BC.appColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'رقم الطلب',
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'محمد وحيد',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'اسم الطرف الأول ثلاثي',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '+966 xx-xxx-xxxx',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'الجوال',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'شارع  9 جبل حفيت',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'المدينة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'توصيل طلبية',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'الغرض',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'ريال',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '800',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'المبلغ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: BC.logo_clr,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff707070))),
                          child: Center(
                              child: Text(
                            'Pic',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          )),
                        ),
                        Text(
                          'صورة السلعة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 16,
                            color: BC.lightGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                // overflow: Overflow.visible,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: BC.appColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'XX-XXX-XXXX',
                        contentPadding: EdgeInsets.only(top: 0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: -10,
                    child: Container(
                        color: Colors.white,
                        child: Text(
                          'رقم الهاتف',
                          style: TextStyle(color: BC.appColor),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                // overflow: Overflow.visible,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: BC.appColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'XX-XXX-XXXX',
                        contentPadding: EdgeInsets.only(top: 0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: -10,
                    child: Container(
                        color: Colors.white,
                        child: Text(
                          'المدينة',
                          style: TextStyle(color: BC.appColor),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                // overflow: Overflow.visible,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: BC.lightGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'XX-XXX-XXXX',
                        contentPadding: EdgeInsets.only(top: 0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: -10,
                    child: Container(
                        color: Colors.white,
                        child: Text(
                          'الجوال',
                          style: TextStyle(color: BC.lightGrey),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MytextField(
                text: 'جوال الطرف الثاني',
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'أتعهد بأن تكون السلعة حسب المتفق عليها وفي خلاف ذلك سيتم استرجاع المبلغ للطرف الأول',
                        textAlign: TextAlign.right,
                        style: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: BC.appColor)),
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                            side: BorderSide(color: BC.appColor),
                          ),
                          // tristate: true,
                          side: BorderSide(color: BC.appColor),
                          checkColor: BC.appColor,
                          activeColor: Colors.white,
                          value: mada,
                          onChanged: (value) {
                            setState(() {
                              mada = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('أوافق على'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'شروط و أحكام',
                      style: TextStyle(
                        color: BC.appColor,
                      ),
                    ),
                    Text(' تطبيق وسيط'),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration:
                          BoxDecoration(border: Border.all(color: BC.appColor)),
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                          side: BorderSide(color: BC.appColor),
                          checkColor: BC.appColor,
                          activeColor: Colors.white,
                          value: second,
                          onChanged: (media) {
                            setState(() {
                              second = media;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(
                name: 'تأكيد الطلب والدفع',
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TheSeller()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
