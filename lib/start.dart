import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final controller = PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children:  const [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    backgroundColor: const Color(0xff111422);
    return Scaffold(
      body:SafeArea(
        child: ListView(
        shrinkWrap: true,

        physics: const NeverScrollableScrollPhysics(),

        children:[

          const Align(
              alignment: Alignment.bottomRight,
              child:Text('skip')),
          SizedBox(height: 20.h,),
          Image.asset('assets/images/a.png',height:250.h,
              width: 300.w),
          SizedBox(height: 5.h,),
          Image.asset('assets/images/b.png',height:50.h,
              width: 50.w),

               Container(
                   height: 400.h,
                   width:400.w,
                  decoration: const BoxDecoration(
                      color: Color(0xff13182B),
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30) )
                  ),

                  child:
                  Column(
                  children: [
                    SizedBox(height: 25.h,),
                     Text(
                                'Unlock all Features',
                                style: TextStyle(
                                  fontSize: 26.sp,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              Text(
                                'Get all the latest Signals,News and Hidden \n Gems and Airdrops from our expert Traders',
                                style: TextStyle(
                                  fontSize: 14.sp,

                                  color:Colors.white,
                                ),
                              ),

                              SizedBox(height: 80.h,),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: ( Image.asset('assets/images/c.png',height:50.h,
                                      width: 50.w))),




                      ])
              ),

      ]
        )
      )
    );
  }
}
class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    backgroundColor: const Color(0xff111422);
    return Scaffold(
      body: SafeArea(
       child: ListView(
          shrinkWrap: true,

          physics: const NeverScrollableScrollPhysics(),
       children:[
         const Align(
             alignment: Alignment.bottomRight,
             child:Text('skip')),
         SizedBox(height: 20.h,),
         Image.asset('assets/images/d.png',height:250.h,
             width: 300.w),
         SizedBox(height: 5.h,),
         Image.asset('assets/images/e.png',height:50.h,
             width: 50.w),
         Expanded(
           child:Container(
                 height: 400.h,
                 width:400.w,
                 decoration: const BoxDecoration(
                     color: Color(0xff13182B),
                     borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30) )
                 ),

                 child: Expanded(
                   child: Column(
                             children: [
                               SizedBox(height: 25.h,),
                               Text(
                                 " All important News",
                                 style: TextStyle(
                                   fontSize: 26.sp,
                                   fontWeight: FontWeight.bold,
                                   color:Colors.white,
                                 ),
                               ),
                               SizedBox(height: 25.h,),
                               Text(
                                 "We keep an eye on the news so you \n don't have to. We share all the important \n News with our Subscribers on a daily basis.",
                                 style: TextStyle(
                                   fontSize: 12.sp,

                                   color:Colors.white,
                                 ),
                               ),


                               SizedBox(height: 80.h,),
                               Align(
                                   alignment: Alignment.bottomRight,
                                   child: ( Image.asset('assets/images/c.png',height:50.h,
                                       width: 50.w))),
                               



                       ]),
                 )
             ),
         )
      ]
       )
         ),
    );
  }
}
class MyPage3Widget extends StatelessWidget {
  const MyPage3Widget({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    backgroundColor: const Color(0xff111422);
     return Scaffold(
       body: SafeArea(
          child: ListView(

          shrinkWrap: true,

          physics: const NeverScrollableScrollPhysics(),
          children:[

            const Align(
                alignment: Alignment.bottomRight,
                child:Text('skip')),
            SizedBox(height: 20.h,),
            Image.asset('assets/images/f.png',height:250.h,
                width: 300.w),
            SizedBox(height: 5.h,),
            Image.asset('assets/images/g.png',height:50.h,
                width: 50.w),


                 Expanded(
                   child: Container(
                       height: 400.h,
                       width:400.w,
                      decoration: const BoxDecoration(
                          color: Color(0xff13182B),
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30) )
                      ),

                      child: Column(
                          children: [
                                  SizedBox(height: 25.h,),
                                  Text(
                                    'Trading Signals  ',
                                    style: TextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.white,
                                    ),
                                  ),
                            SizedBox(height: 25.h,),
                            Text(
                              'Our team gives the best trading signals \n For Future and spot Trading with a record \n of 96% Accuracy ',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color:Colors.white,
                              ),
                            ),
                          ])

                ),
                 ),


        ]
          )
    ),
     );
  }
}


