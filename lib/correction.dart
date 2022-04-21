import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Correction extends StatefulWidget {
  const Correction({Key? key}) : super(key: key);

  @override
  State<Correction> createState() => _CorrectionState();
}

class _CorrectionState extends State<Correction> {
  @override
  Widget build(BuildContext context) {
    backgroundColor: const Color(0xff111422);
    return SafeArea(
      child:ListView(
        shrinkWrap: true,

        physics: const AlwaysScrollableScrollPhysics(),
        children: [
        SizedBox(height: 250.h, width: 250.w,
        child: Image.asset('assets/images/a.png',height:30.h,
            width: 30.w),),
      SizedBox(height: 30.h,),
        SizedBox(height: 5.h,),
        Image.asset('assets/images/b.png',height:50.h,
            width: 50.w),


        Expanded(
        child: Container(
        height: 450.h,
        width:450.w,
        decoration: const BoxDecoration(
            color: Color(0xff13182B),
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30) )
        ),

        child: Column(
            children: [
              SizedBox(height: 25.h,),
              Text(
                'Unlock all Features',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color:Colors.white,
                ),
              ),
              SizedBox(height: 10.h,),
              Text(
                'Get all the latest Signals, News and Hidden',
                style: TextStyle(
                  fontSize: 10.sp,

                  color:Colors.white,
                ),
              ),
              SizedBox(height: 5.h,),
              Text(
                'Gems and Airdrops from our expert Traders',
                style: TextStyle(
                  fontSize: 12.sp,

                  color:Colors.white,
                ),
              ),
    ]


    )))])
    );
  }
}
