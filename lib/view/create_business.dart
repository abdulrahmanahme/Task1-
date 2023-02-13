import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/viewmodel/component/widgets/border_button.dart';
import 'package:task/viewmodel/component/widgets/dialog_widget.dart';
import 'package:task/viewmodel/component/widgets/item_card.dart';

import '../viewmodel/component/widgets/back_button.dart';
import '../viewmodel/component/widgets/button.dart';
import '../viewmodel/component/widgets/image_widget.dart';
import '../viewmodel/component/widgets/text_form_feild.dart';
import '../viewmodel/component/widgets/text_widget.dart';

class BussinessAccount extends StatefulWidget {
  const BussinessAccount({super.key});

  @override
  State<BussinessAccount> createState() => _BussinessAccountState();
}

class _BussinessAccountState extends State<BussinessAccount> {
  final _dropdownFormKey = GlobalKey<FormState>();

  var controllerEmail = TextEditingController();

  var controllerFirstname = TextEditingController();

  var controllerLastname = TextEditingController();
  bool checkedValue = false;
  @override
  void dispose() {
    controllerEmail.dispose();
    controllerFirstname.dispose();
    controllerLastname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 5.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        title: Text(
          'انشاء حساب شركة',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontFamily: 'Tajawal',
          ),
        ),
        leading: Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 10, right: 8, bottom: 8),
          child: ButtonBack(),
        ),
        backgroundColor: HexColor("#F6F6F6"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _dropdownFormKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              decoration: BoxDecoration(
                // border: Border.all(color:  Colors.grey ,
                // width: 1.5),
                color: Color(0xff0093F5).withOpacity(.1),
                borderRadius: BorderRadius.all(Radius.circular(
                        15.0) ,
                        //

                    ),
              ),
              child: Container(
                height: 18.h,
                width: 38.w,

                // shape: BoxShape.circle,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 8.h,
                        width: 20.w,
                        
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/camera4.png'),
                            fit: BoxFit.cover,
                          ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    const Text(
                      'تحميل شعار الشركه',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: ' اسم الشركة',
              hintText: 'أدخل الاسم',
              validationText: 'الرجاء ادخال الاسم ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'نشاط الشركه',
              hintText: 'أدخل النشاط',
              validationText: 'الرجاء ادخال الاسم ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'رقم الهاتف',
              hintText: 'رقم الهاتف',
              suffixIcon: CountryPickerDropdown(
                initialValue: 'KW',
                itemBuilder: _buildDropdownItem,
                // sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                onValuePicked: (Country country) {
                  print("${country.name}");
                },
              ),
              validationText: 'الرجاء ادخال رقم الهاتف ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'رقم الوتساب',
              hintText: ' ادخل رقم الوتساب ',
              suffixIcon: CountryPickerDropdown(
                initialValue: 'KW',
                itemBuilder: _buildDropdownItem,
                // sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                onValuePicked: (Country country) {
                  print("${country.name}");
                },
              ),
              validationText: 'الرجاء ادخال  الوتساب ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'البريد الالكترونى',
              hintText: 'ادخل البريد الالكترونى',
              validationText: 'الرجاء ادخال البريد الالكترونى ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              suffixIcon: const Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 30,
                color: Color(0XFF0099FF),
              ),
              labeText: 'الدولة',
              hintText: 'الرجاء ادخال الدوله',
              validationText: 'الرجاء ادخال الدولة ',
            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'كلمه المرور ',
              hintText: 'كلمه المرور',
                  suffixIcon: Icon(Icons.visibility_outlined),

              validationText: 'الرجاء ادخال كلمه المرور',
            ),
           
            Padding(
              padding: EdgeInsets.only(right: 5.h, top: 2.h,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'روابط السوشيال ميديا',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(
                        5.0) //                 <--- border radius here
                    ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Container(
                      height: 4.h,
                      width: 8.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/face1.png'),
                          fit: BoxFit.cover,
                        ),
                        // shape: BoxShape.circle,
                      ),
                    ),
                    // SizedBox(width: 1,),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w,right: 8.w),
                      child: Container(
                        height: 4.h,
                        width: 10.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/twee2.png'),
                            fit: BoxFit.cover,
                          ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                    ),

                    const ImageWidget(
                      image: 'assets/image/inst.png',
                    ),

                    const ImageWidget(
                      image: 'assets/image/locat.png',
                    ),
 
                    const ImageWidget(
                      image: 'assets/image/link.png',
                    ),

                   
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.5),
                color: Color(0xff0093F5).withOpacity(.1),
                borderRadius: BorderRadius.all(Radius.circular(
                        5.0) //                 <--- border radius here
                    ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 10.h,
                          width: 25.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image/camera4.png'),
                              fit: BoxFit.cover,
                            ),
                            // shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'صور من المتجر',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: defaultFormField(
                hintText: ' يرجى كتابة نبزى عن نشاطك',
                maxLines: 5,
                labelStyle: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Tajawal',

                  color: Colors.black,
                  // height: 17,
                ),
                controller: controllerEmail,
                validate: (value) {
                  if (value!.isEmpty) {
                    return ' يرجى كتابة نبزى عن نشاتك';
                  }
                  return null;
                },
                type: TextInputType.emailAddress,
              ),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Transform.scale(
                  scale: 1.2,
                  child: CheckboxListTile(
                    visualDensity: VisualDensity.compact,
                    title: Row(
                      children:  [
                        Text(
                          'أوافق على ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Tajawal',
                          ),
                        ),
                        Text(
                          'الشروط و الاحكام',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF0099FF),
                            fontFamily: 'Tajawal',
                          ),
                        ),
                        
                      ],
                    ),
                    value: checkedValue,

                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            SizedBox(
              height: 1.h,
            ),
            Button(
                name: 'تسجيل ',
                onPressed: () {
                  showDialog(
                      // barrierColor: Color.fromARGB(1, 2, 1, 1),
                      context: context,
                      builder: (BuildContext context) => dialog(
                            height: Device.orientation == Orientation.portrait
                                ? 42.h
                                : 49.h,
                            width: Device.orientation == Orientation.portrait
                                ? 50.w
                                : 60.w,
                            widget: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Container(
                                          height: 5.h,
                                          width: 9.w,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              padding: EdgeInsets.only(
                                                  top: 0.5.h,
                                                  bottom: 0.5.h,
                                                  left: .5.w,
                                                  right: 0.5.w),
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                side: BorderSide(
                                                  color: Colors.grey.shade200,
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(1.0),
                                              child: Center(
                                                child: Icon(
                                                  Icons.close,
                                                  size: 25,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                        SizedBox(
width: 10.w,
                                        ),
                                        // Spacer(),
                                          Text(
                                      'مميزات انضمام المتجر ',
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFF0099FF),
                                        fontFamily: 'Tajawal',
                                      ),
                                    ),
                                   ],
                                 ),
                                 Text(
                                      'الينا',
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFF0099FF),
                                        fontFamily: 'Tajawal',
                                      ),
                                    ),
                               
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ProfileButton(
                                    icon: AssetImage("assets/image/up.png"),
                                    name: 'مصدر اضافى للارباح',
                                    type: 'احصل على ميذيد من الطلبات',
                                  ),
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ProfileButton(
                                    icon: AssetImage("assets/image/user.png"),
                                    name: 'زبائن جدد',
                                    type: 'سلّط الضوء على نشاطك',
                                  ),
                                ),
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: ProfileButton(
                                    icon: AssetImage("assets/image/home2.png"),
                                    name: 'مشاهدات أكثر ',
                                    type: 'مميزات فريدة للأنشطة التجارية',
                                  ),
                                ),
                                Container(
              width: 65.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0XFF0099FF),
                  padding: EdgeInsets.only(
                      top: 2.h, bottom: 1.h, left: 2.w, right: 2.w),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                 'انضم الأن ',
                  
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                  ),
                ),
                  onPressed: (() {
                
              }),
              ),
            ),
                                
                              ],
                            ),
                          ));
                }),
                 SizedBox(
              height: 1.h,
            ),
            Burderbutton(
              name: 'سجل دخول',
              name1: 'لديك حساب؟',
              onPressed: (){},
            ),
            SizedBox(
              height: 5.h,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            Text("${country.phoneCode}+"),
            CountryPickerUtils.getDefaultFlagImage(country),
          ],
        ),
      );
}
