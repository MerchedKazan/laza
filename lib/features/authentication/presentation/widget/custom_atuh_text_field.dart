import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({super.key,required this.title});
final String title;
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
        TextField()
      ],
    );
  }
}