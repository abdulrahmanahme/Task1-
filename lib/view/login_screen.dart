import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:task/view/create_account.dart';
import 'package:task/viewmodel/component/widgets/back_button.dart';
import 'package:task/viewmodel/component/widgets/button.dart';
import 'package:task/viewmodel/component/widgets/text_form_feild.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _dropdownFormKey = GlobalKey<FormState>();

  var controllerEmail = TextEditingController();
  var controllerFirstname = TextEditingController();
  var controllerLastname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          
          leading: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 8, right: 8, bottom: 8),
            child: ButtonBack(),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _dropdownFormKey,
            child: Column(children: [
              Container(
                height: 12.h,
                width: 49.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/motto3.png'),
                    fit: BoxFit.cover,
                  ),
                  // shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(29.0),
                    ),
                    border: Border.all(
                        color: Color(0xff0093F5).withOpacity(.5), width: 1.5),
                  ),
                  child: TabBar(
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                        color: Color(0xff0093F5),
                        borderRadius: BorderRadius.all(Radius.circular(29.0)),
                      ),
                      tabs: [
                        Container(
                            child: Text(
                          'شركه',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'NeoSansArabic',
                            fontWeight: FontWeight.w400,
                            // color: Colors.white,
                          ),
                        )),
                       Container(
                            child: Text(
                          'فرد',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'NeoSansArabic',
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                      ]),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 30.h,
                color: Colors.white,
                child: TabBarView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                labeText: 'كلمة المرور ',
                hintText: 'كلمة المرور',
                validationText: 'الرجاء ادخال كلمه المرور',
                  suffixIcon: Icon(Icons.visibility_outlined),
              ),
              
                              SizedBox(
                                height: 1.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 6.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'نسيت كلمه السر؟',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Tajawal',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
        
                    // / that is  the  second containt of Widet
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30.h,
                          color: Colors.white,
                          child: Column(
                            children: [
                       
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
                labeText: 'كلمه المرور ',
                hintText: 'كلمه المرور',
              suffixIcon: Icon(Icons.visibility_outlined),
                validationText: 'الرجاء ادخال كلمه المرور',
              ),
                             
                            
                              SizedBox(
                                height: 1.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 6.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'نسيت كلمه السر؟',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Tajawal',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        
              Button(
                name: 'تسجيل الدخول',
                onPressed: (() {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>CreateAccountScreen()));
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'أو',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Tajawal',
                  ),
                ),
              ),
              Container(
                width: 65.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.only(
                        top: 2.h, bottom: 2.h, left: 2.w, right: 2.w),
                    elevation: 2,
                    side: BorderSide(
                      color: Color(0XFF0099FF),
                      width: 1.2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'تسجيل حساب جديد',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF0099FF),
                      fontFamily: 'Tajawal',
                    ),
                  ),
                  onPressed: () {
                    
                 
                   
                  },
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'دخول عن طريق',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Tajawal',
                ),
              ),
        // SizedBox(
        //                         height: 1.h,
        //                       ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5.h,
                    width: 12.w,
                    child: Image.asset(
                      'assets/image/google.png',
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Container(
                    height: 5.h,
                    width: 10.w,
                    child: Image.asset(
                      'assets/image/facebook.png',
                    ),
                  ),
                ],
              ),
        
              SizedBox(
                height: 2.h,
              ),
              Text(
                'الدخول كزائر',
                style: TextStyle(
                  color: Color(0XFF0099FF),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Tajawal',
                ),
              ),
            ]),
          ),
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
      Widget _buildDefaultMenuItem() {
    return Row(
      children: <Widget>[
        Image.asset(
      'assets/image/kwate.png',
      height: 20.0,
      width: 30.0,
      fit: BoxFit.fill,
    
    ),
        
        SizedBox(
          width: 1.0,
        ),
        Text("+965"),
      ],
    );
  }
}

 

// Widget _buildDropdownItem() => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       //  Text(
//                       //                   'رقم الهاتف',
//                       //                   style: TextStyle(
//                       //                     color: Colors.black,
//                       //                     fontSize: 17.sp,
//                       //                     fontWeight: FontWeight.w500,
//                       //                     fontFamily: 'Tajawal',
//                       //                   ),
//                       //                 ),
//                       //                 Spacer(),
                      
//                                       Text(
//                                         '965+',
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 17.sp,
//                                           fontWeight: FontWeight.w500,
//                                           fontFamily: 'Tajawal',
//                                         ),
//                                       ),
                                      
                                     
//                                        SizedBox(
// width: 1.w,
//                                       ),
//                       Container(
//                     height: 20.0,
//       width: 30.0,
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/image/kwate.png'),
//                           fit: BoxFit.fill,
//                         ),
//                         // shape: BoxShape.circle,
//                       ),
                      
//               ),
              
//                     ],
//                   ),
//                 );
