import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test_appeorem/constants/theme.dart';

class CustomAuthTextField extends StatelessWidget {
   CustomAuthTextField({super.key,required this.title,required this.controller,required this.validator});
final String title;
final TextEditingController controller; 
final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: 
        TextStyle(
          fontSize: 13,
          color: secondaryTextColor,
          fontWeight: FontWeight.w400
        )
        ,),
        TextFormField(
          controller: controller,
          validator: validator,
        )
      ],
    );
  }
}