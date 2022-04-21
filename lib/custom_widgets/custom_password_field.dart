import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, required this.controller}) : super(key: key);
 final TextEditingController controller;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  @override
  Widget build(BuildContext context) {
    var obscureText=true;
    return TextField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(prefix: Icon(Icons.lock,color:Colors.blue),
      hintText: '********',
        suffixIcon: IconButton(
          icon: Icon(
          obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              obscureText = ! obscureText;
            });
          },
        ),


      ),
    );
  }
}
