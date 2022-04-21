import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tassskkk/signin.dart';
import 'package:tassskkk/start.dart';

import 'home.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(

            textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.sp)),
          ),
          home: FirstPage(),
        );
      },
    );
  }
}
