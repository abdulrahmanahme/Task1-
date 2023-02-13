import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:task/view/create_business.dart';
import 'package:task/view/layout_screen.dart';
import 'package:task/viewmodel/component/widgets/back_button.dart';
import 'package:task/viewmodel/component/widgets/button.dart';
import 'package:task/viewmodel/component/widgets/dialog_widget.dart';
import 'package:task/viewmodel/component/widgets/text_form_feild.dart';
import 'package:task/viewmodel/component/widgets/text_widget.dart';

import '../viewmodel/component/widgets/border_button.dart';

class CreateAccountScreen extends StatefulWidget {
  CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _dropdownFormKey = GlobalKey<FormState>();

  var controllerEmail = TextEditingController();

  var controllerFirstname = TextEditingController();

  var controllerLastname = TextEditingController();
 bool checkedValue=false;
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
                  'تسجيل حساب',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Tajawal',
                  ),
                ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 8, bottom: 8),
          child:Padding(
            padding: const EdgeInsets.all(3.0),
            child: ButtonBack(),
          ),
        ),
        backgroundColor: HexColor("#F6F6F6"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _dropdownFormKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'الاسم',
              hintText: 'أدخل الاسم',
             
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
              labeText: 'البريد الالكترونى',
              hintText: 'ادخل البريد الالكترونى',
              validationText: 'الرجاء ادخال البريد الالكترونى ',
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
                                   color:Color(0XFF0099FF) ,
                                 ),
              labeText: 'الدولة',
              hintText: 'الرجاء ادخال الدوله',
              validationText: 'الرجاء ادخال الدولة ',
            ),
             TextFormFieldWidget(
              controller: controllerLastname,
              labeText: 'كلمه المرور ',
              hintText: 'كلمه المرور',
              validationText: 'الرجاء ادخال كلمه المرور',
                  suffixIcon: Icon(Icons.visibility_outlined),

            ),
            TextFormFieldWidget(
              controller: controllerLastname,
              labeText: ' تأكيد كلمه المرور ',
              hintText: 'كلمه المرور',
              validationText: 'الرجاء ادخال كلمه المرور',
                  suffixIcon: Icon(Icons.visibility_outlined),

            ),
             Directionality(
                      textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Transform.scale(
                                scale: 1.2,
            
                  child: CheckboxListTile(
                    visualDensity: VisualDensity.compact,
                  title: Row(
                    children:[
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
                SizedBox(
width: 10.w,
                ),
                    IconText(),
                  ],),
                  value: checkedValue,
                
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
          
 
            
           
            Button(
                name: 'تسجيل ',
                onPressed: () {
                  showDialog(
                      // barrierColor: Color.fromARGB(1, 2, 1, 1),
                      context: context,
                      builder: (BuildContext context) => dialog(
                        
      height: Device.orientation == Orientation.portrait? 22.h:49.h,
                      width: Device.orientation == Orientation.portrait? 50.w:60.w,
                            widget: Column(
                              children: [
                                Button(
                                  name: 'تم انشاء حسابك بنجاح ',
                                  onPressed: (() {}),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  ' (2)لديك عدد',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                                Text(
                                  'اعلان مجانى',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ],
                            ),
                          ));
                }),
 SizedBox(
              height: 1.h,
            ),
        Burderbutton(name: 'سجل دخول',name1: 'لديك حساب؟', 
            onPressed: (() {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>LayoutScreen()));
            }),

            ),
            SizedBox(
              height: 5.h,
            ),
           
          ]),
        ),
      ),
    );
  }
}


Widget _buildDropdownItem(Country country) => Container(
      child: Row(
        children: <Widget>[
          Text("${country.phoneCode}+"),
          CountryPickerUtils.getDefaultFlagImage(country),
        ],
      ),
    );
