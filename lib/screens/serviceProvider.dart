import 'package:flutter/material.dart';

import '../constants/colors.dart';

import '../widgets/arrowButton.dart';
import '../widgets/button.dart';

class ServiceProvider extends StatefulWidget {
  @override
  State<ServiceProvider> createState() => _ServiceProviderState();
}

class _ServiceProviderState extends State<ServiceProvider> {
  bool mada = false;

  bool second = false;
  Object _itemValue;
  var itemList = ['1st Floor', '2nd Floor', '3rd Floor', '4th Floor'];
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
                  'مقدم الخدمة',
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
                ],
              ),
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
                    keyboardType: TextInputType.phone,
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
                        'قيمة السلعة',
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
                    keyboardType: TextInputType.phone,
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
                        'وصف السلعة(اختياري)',
                        style: TextStyle(color: BC.appColor),
                      )),
                ),
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
                  child: DropdownButton(
                      borderRadius: BorderRadius.circular(10),
                      isExpanded: true,
                      hint: Text('Floors'),
                      underline: SizedBox(),
                      icon: Container(
                          width: 30,
                          height: 29,
                          decoration: BoxDecoration(
                              color: BC.appColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(Icons.keyboard_arrow_down)),
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
                    keyboardType: TextInputType.phone,
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
                        'جوال الطرف الثاني',
                        style: TextStyle(color: BC.appColor),
                      )),
                ),
              ],
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
              height: 20,
            ),
            MyButton(
              name: 'تأكيد الطلب',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ServiceProvider()));
              },
            )
          ]),
        ),
      ),
    );
  }
}
