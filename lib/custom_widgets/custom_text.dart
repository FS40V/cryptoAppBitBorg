import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bitborg_icon.dart';

class CustomTextField extends StatefulWidget {

  TextEditingController controller;
  String hintText;
  TextStyle customstyle;
  bool showSuffixIcon;
  CustomTextField({ required this.hintText, required this.controller, required this.showSuffixIcon, required this.customstyle});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: widget.controller,
      style: TextStyle(color: Colors.white),
      decoration:  InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.customstyle,

        border: InputBorder.none,
        suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: widget.showSuffixIcon ? InkWell(
                onTap: (){
                  print('icon');
                  // setState(() {
                  //   obscureText = !obscureText;
                  // });

                },
                child: Icon(Bitborg.lock, color: const Color(0xffFFFFFF), size: 24.sp,)
            ) : Container(
              width: 0,
              height: 0,
            )

        ),
      ),
    );
  }
}