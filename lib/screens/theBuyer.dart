import 'package:flutter/material.dart';
import 'package:wasit_bussiness_app/widgets/textFormfield.dart';

import '../constants/colors.dart';
import '../widgets/UploadImageButton.dart';
import '../widgets/arrowButton.dart';
import '../widgets/button.dart';
import 'beneficiaryService.dart';

class TheBuyer extends StatefulWidget {
  @override
  State<TheBuyer> createState() => _TheBuyerState();
}

class _TheBuyerState extends State<TheBuyer> {
  bool mada = false;

  bool second = false;
  Object _itemValue;
  var itemList = ['1stأيام', '2nd أيام', '3rd أيام', '4th أيام'];
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
                  'المشتري',
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
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide()),
                        labelText: 'اسم الطرف',
                        contentPadding: EdgeInsets.only(top: 0, right: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'الجوال',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'المدينة',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: UploadButton(
                press: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  MytextField(
                    text: 'الغرض من الحوالة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'قيمة السلعة',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(
                    text: 'وصف السلعة(اختياري)',
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
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: DropdownButton(
                              borderRadius: BorderRadius.circular(10),
                              isExpanded: true,
                              hint: Text(
                                'أيام',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              underline: SizedBox(),
                              icon: Container(
                                  width: 30,
                                  height: 29,
                                  decoration: BoxDecoration(
                                      color: BC.appColor,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  )),
                              value: _itemValue,
                              onChanged: (value) {
                                setState(() {
                                  _itemValue = value;
                                });
                              },
                              items: itemList.map((value) {
                                return DropdownMenuItem(
                                    value: value,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.end,
                                      ),
                                    ));
                              }).toList()),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: -10,
                        child: Container(
                            color: Colors.white,
                            child: Text(
                              'الوقت المتوقع لأنهاء الصفقة',
                              style: TextStyle(color: BC.appColor),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MytextField(text: 'جوال الطرف الثاني'),
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
                          decoration: BoxDecoration(
                              border: Border.all(color: BC.appColor)),
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
                          decoration: BoxDecoration(
                              border: Border.all(color: BC.appColor)),
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
                    height: 20,
                  ),
                  MyButton(
                    name: 'تأكيد الطلب',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BeneficiaryService()));
                    },
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
