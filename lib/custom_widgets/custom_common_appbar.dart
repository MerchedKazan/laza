import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';

class CustomBottomAppBar extends StatelessWidget {

  const CustomBottomAppBar({
    super.key,
    required this.title
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
    color: primaryColor,
    child: Center(
        child: Text(
    title,
      style:const TextStyle(
        color: Color(0xFFFEFEFE),
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    )),
      );
  }
}