import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tassskkk/signin.dart';

import 'bitborg_icon.dart';
import 'custom_widgets/custom_text.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff111422),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal:20.w, vertical:20.w),
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(height:10.h),
            Align(
              alignment: Alignment.center,
              child: Column(

                children: [
                  Container(
                    height:60.h ,
                    width:100.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bb.png'))),
                  ),
                ],
              ),

            ),
            SizedBox(height:5.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize:20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:4.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Please enter below information for account creation',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height:15.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontSize:14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300.w,
              height: 40.h,
              padding: EdgeInsets.only(left:15.h ),
              margin: EdgeInsets.only(top:6.h),
              decoration: const BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(6)),
                color:Color(0xff2A2C39),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const Expanded(

                    child: Icon(Icons.person,color:Colors.white),
                  ),
                  SizedBox(width:10.w),

                  Expanded(
                    flex: 12,
                    child: CustomTextField(

                      customstyle: const TextStyle(color: Color(0xffBEBEBE),),
                      hintText: "Muzamil Afridi",
                      controller: nameController,
                      showSuffixIcon: false,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:18.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize:14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300.w,
              height: 40.h,
              padding: EdgeInsets.only(left:15.h ),
              margin: EdgeInsets.only(top:6.h),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color:Color(0xff2A2C39),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(

                      child:Image.asset('assets/images/envelope.png',height:24.h,width:24.w)
                  ),
                  SizedBox(width:10.w),

                  Expanded(
                    flex: 12,
                    child: CustomTextField(

                      customstyle: const TextStyle(color: Color(0xffBEBEBE),),
                      hintText: "HelloJohn@gmail.com",
                      controller: emailController,
                      showSuffixIcon: false,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:18.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Country',
                style: TextStyle(
                  fontSize:14.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300.w,
              height: 40.h,

              margin: EdgeInsets.only(top:6.h),
              decoration: const BoxDecoration(
                color:Color(0xff2A2C39),
                borderRadius: BorderRadius.all(Radius.circular(6)),

              ),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(

                      child: Icon(Bitborg.globe,color:Colors.white),
                    ),

                    Expanded(
                      flex: 6,
                      child: CustomTextField(

                        customstyle: const TextStyle(color: Color(0xffBEBEBE),),
                        hintText: "Country",
                        controller: countryController,
                        showSuffixIcon: false,
                      ),
                    ),
                   SizedBox(width:10.w,),
                  Expanded(

                  child:Image.asset('assets/images/v.png',height:24.h,width:24.w)
                  ),
                  ],
                ),

                ),

            SizedBox(height: 18.h,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password', style: TextStyle(
                  fontSize: 14.h,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                )),
            SizedBox(height: 6.sp,),
            Container(
                width: 300.w,
                height: 40.h,
                padding: EdgeInsets.only(left:15.h ),
                margin: EdgeInsets.only(top:6.h),

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8),),
                  color:Color(0xff2A2C39),

                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(

                      child:Image.asset('assets/images/lock.png',height:24.h,width:24.w)
                  ),
                  SizedBox(width:10.w),

                  Expanded(
                    flex: 14,
                    child: CustomTextField(

                      customstyle: TextStyle(color: const Color(0xffBEBEBE),),
                      hintText: "*******",
                      controller: passwordController,
                      showSuffixIcon: true,
                    ),
                  ),
                ],
              ),
            ),



            SizedBox(height:16.h),
            Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width:5.w),
                  RichText(
                    text: TextSpan(
                        text: "Do you agree to the Bitborg's ",
                        style: TextStyle(
                          fontSize:12.h,
                          color: Colors.white,

                        ),
                        children: [
                          TextSpan(
                              text: 'Terms and conditions ?',
                              style: TextStyle(
                                fontSize:12.h,
                                color: Colors.white,

                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => const SignIn()));
                                }),
                        ]),
                  ),
                ]
            ),
    SizedBox(height:4.h),
    Row(

    mainAxisAlignment: MainAxisAlignment.start,
    children:[
    Icon(Icons.check_box_outline_blank),
    SizedBox(width:5.w),
    RichText(
    text: TextSpan(
    text: 'Do you Acknowledge the Risk attached to traging ? ',
    style: TextStyle(
    fontSize:12.h,
    color: Colors.white,

    ),
    ),
    ),
        ]
      ),


            Container(
              width: 300.w,
              height: 40.h,
              padding: EdgeInsets.only(left: 50.w,right:50.w),
              margin: EdgeInsets.only(top:10.h),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: const Color(0xffF2AD0B),
              ),
              child: Center(
                child: InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text('Create Account',
                      style: TextStyle(
                          fontSize:15.sp,fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            ),

            SizedBox(height:30.h),

            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(
                      fontSize:14.h,
                     color:Colors.white,

                    ),
                    children: [
                      TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            fontSize:14.h,
                            color: const Color(0xffF2AD0B),
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignIn()));
                            }),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}