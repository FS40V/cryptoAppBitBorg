import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tassskkk/bitborg_icon.dart';
import 'package:tassskkk/signup.dart';

import 'custom_widgets/custom_text.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff111422),
      body: SafeArea(

          child:ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 20.h,
            ),
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(height: 50.h, width: 50.w,
                child: Image.asset('assets/images/bb.png',height:30.h,
                width: 30.w),),
              SizedBox(height: 30.h,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login', style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
              SizedBox(height: 4.h,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Please enter your email and password to login', style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                ),
                ),
              ),
              SizedBox(height: 21.h,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email', style: TextStyle(
                    fontSize: 16.h,
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
                  padding: EdgeInsets.only(left: 15.w),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6),),
                    color:Color(0xff2A2C39),

                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                     child: Icon(Bitborg.lock,color:Colors.white),
                      //  child:Image.asset('assets/images/lock.png',height:24.h,width:24.w)
                    ),
                    SizedBox(width:10.w),

                    Expanded(
                      flex: 14,
                      child: CustomTextField(

                        customstyle: const TextStyle(color: Color(0xffBEBEBE),),
                        hintText: "*******",
                        controller: passwordController,
                        showSuffixIcon: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.sp,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffF2AD0B),
                  ),
                ),
              ),
              SizedBox(height: 20.sp,),
              Container(
                width: 300.w,
                height: 40.h,

                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6),
                  ),
                  color: Color(0xffF2AD0B),

                ),
                child: Center(
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                    child: Text('Log In',
                        style: TextStyle(
                            fontSize: 14.sp,fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
              ),





              SizedBox(height: 220.sp,),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have account ? ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                            text: 'Create account',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color(0xffF2AD0B),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const SignUp()));
                            }
                        ),
                      ]),
                ),
              ),
            ],
          )
      ),
    );
  }
}